import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_movies_app/src/presentation/pages/trailer_player_screen.dart';
import 'package:task_movies_app/src/presentation/providers/media_provider.dart';
import 'package:task_movies_app/src/presentation/providers/movie_provider.dart';
import 'package:task_movies_app/src/shared/widgets/custom_text.dart';
import 'package:task_movies_app/src/utils/app_colors.dart';
import 'package:task_movies_app/src/utils/app_consts.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({super.key, required this.movieId});

  final int movieId;

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChangeNotifierProvider<MovieProvider>(
        create: (_) => MovieProvider()..setMovieDetailResponse(widget.movieId),
        child: Consumer<MovieProvider>(
          builder: (context, provider, _) {
            final response = provider.movieDetailResponse;

            return response.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              data: (movie) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          CachedNetworkImage(
                            imageUrl:
                                'https://image.tmdb.org/t/p/w500${movie.posterPath}',
                            width: double.infinity,
                            height: 400,
                            fit: BoxFit.cover,
                            placeholder: (context, url) => const SizedBox(
                              height: 300,
                              child: Center(
                                  child: CircularProgressIndicator(
                                      strokeWidth: 2)),
                            ),
                            errorWidget: (context, url, error) =>
                                const Icon(Icons.error),
                          ),
                          Positioned(
                            top: 40,
                            left: 16,
                            child: Row(
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: const Icon(Icons.arrow_back_ios,
                                      color: Colors.white),
                                ),
                                const SizedBox(width: 5),
                                const CustomText(
                                  text: "Watch",
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 16,
                            left: 16,
                            right: 16,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CustomText(
                                  text: movie.title ?? '',
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                                const SizedBox(height: 4),
                                const CustomText(
                                  text: "In theaters december 22, 2021",
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                                const SizedBox(height: 12),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      backgroundColor: AppColors.greyPurple,
                                      fixedSize: const Size(230, 50)),
                                  child: CustomText(
                                    text: "Get Tickets",
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: OutlinedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) =>
                                              ChangeNotifierProvider(
                                            create: (_) => MediaProvider(),
                                            child: TrailerPlayerPage(
                                                movieId: movie.id!),
                                          ),
                                        ),
                                      );
                                    },
                                    style: OutlinedButton.styleFrom(
                                      fixedSize: const Size(230, 50),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      side: const BorderSide(
                                        color: AppColors.greyPurple,
                                      ),
                                      foregroundColor: Colors.white,
                                    ),
                                    child: const CustomText(
                                      text: "Watch Trailer",
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: CustomText(
                          text: 'Genres',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 14),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children:
                              (movie.genres ?? []).asMap().entries.map((entry) {
                            final index = entry.key;
                            final genre = entry.value;
                            final color = AppConsts.genreColors[
                                index % AppConsts.genreColors.length];

                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                color: color,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: CustomText(
                                text: genre.name ?? '',
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: CustomText(
                          text: 'Overview',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: CustomText(
                          text: movie.overview ?? '',
                          fontSize: 12,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              },
              error: (message) =>
                  const Center(child: Text("Failed to load movie details")),
              empty: () => const Center(child: Text("No data available")),
            );
          },
        ),
      ),
    );
  }
}
