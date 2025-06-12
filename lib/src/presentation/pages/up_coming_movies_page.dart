import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_movies_app/src/presentation/pages/movie_detail.dart';
import 'package:task_movies_app/src/presentation/pages/search_page.dart';
import 'package:task_movies_app/src/presentation/providers/movie_provider.dart';
import 'package:task_movies_app/src/presentation/providers/search_provider.dart';
import 'package:task_movies_app/src/shared/widgets/custom_text.dart';
import 'package:task_movies_app/src/utils/app_colors.dart';

class UpComingMoviesPage extends StatelessWidget {
  const UpComingMoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MovieProvider>(
      create: (_) => MovieProvider()..setUpcomingMoviesResponse(),
      child: Consumer<MovieProvider>(
        builder: (context, provider, _) {
          return provider.upcomingMoviesResponse.when(
            data: (response) {
              final movies = response.results ;


              return Scaffold(
                appBar: AppBar(
                  title: const CustomText(
                    text: "Watch",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                  actions: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ChangeNotifierProvider(
                              create: (_) => SearchProvider(movies),
                              child: SearchPage(),
                            ),
                          ),
                        );

                      },
                      icon: const Icon(Icons.search),
                    )
                  ],
                ),
                body: Container(
                  color: AppColors.offWhite,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Expanded(
                          child: ListView.builder(
                            itemCount: movies.length,
                            itemBuilder: (context, index) {
                              final movie = movies[index];

                              return GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          MovieDetail(movieId: movie.id!),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: 180,
                                  margin: const EdgeInsets.only(bottom: 16),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.grey.shade300,
                                  ),
                                  clipBehavior: Clip.hardEdge,
                                  child: Stack(
                                    children: [
                                      Positioned.fill(
                                        child: CachedNetworkImage(
                                          imageUrl:
                                          'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                                          fit: BoxFit.cover,
                                          placeholder: (context, url) =>
                                          const Center(
                                            child: CircularProgressIndicator(
                                                strokeWidth: 2),
                                          ),
                                          errorWidget: (context, url, error) =>
                                          const Icon(Icons.error,
                                              color: Colors.red),
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        bottom: 20,
                                        child: CustomText(
                                          text: movie.title ?? '',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            loading: () => const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            ),
            error: (message) => const Scaffold(
              body: Center(
                child: CustomText(text: "Failed to load movies"),
              ),
            ),
            empty: () => const Scaffold(
              body: Center(
                child: CustomText(text: "No movies found"),
              ),
            ),
          );
        },
      ),
    );
  }
}
