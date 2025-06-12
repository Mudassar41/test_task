import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:task_movies_app/src/data/models/category/category.dart';
import 'package:task_movies_app/src/data/models/movie/movie_model.dart';
import 'package:task_movies_app/src/presentation/providers/search_provider.dart';
import 'package:task_movies_app/src/shared/widgets/custom_text.dart';
import 'package:task_movies_app/src/utils/app_assets.dart';
import 'package:task_movies_app/src/utils/app_colors.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final List<Category> categories = [
    Category(name: 'Comedies', assetPath: AppAssets.comedies),
    Category(name: 'Crime', assetPath: AppAssets.crime),
    Category(name: 'Family', assetPath: AppAssets.family),
    Category(name: 'Documentaries', assetPath: AppAssets.documentaries),
    Category(name: 'Dramas', assetPath: AppAssets.dramas),
    Category(name: 'Fantasy', assetPath: AppAssets.fantasy),
    Category(name: 'Holidays', assetPath: AppAssets.holidays),
    Category(name: 'Horror', assetPath: AppAssets.horror),
    Category(name: 'Sci-Fi', assetPath: AppAssets.sciFi),
    Category(name: 'Thriller', assetPath: AppAssets.thriller),
  ];

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SearchProvider>(context, listen: false);

    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: provider.searchController,
              onChanged: provider.search,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.offWhite,
                hintText: 'TV show, movies and more',
                hintStyle: GoogleFonts.poppins(color: Colors.black26),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: Consumer<SearchProvider>(
                  builder: (_, provider, __) {
                    return provider.searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: provider.clearSearch,
                          )
                        : const SizedBox();
                  },
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ColoredBox(
              color: AppColors.offWhite,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Consumer<SearchProvider>(
                  builder: (context, provider, _) {
                    final filteredList = provider.filteredMovies;
                    final query = provider.searchController.text;

                    if (query.isEmpty) {
                      // Inline Category Grid
                      return StaggeredGrid.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        children: categories.map((category) {
                          return Container(
                            height: 100,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: AssetImage(category.assetPath),
                                fit: BoxFit.cover,
                              ),
                            ),
                            alignment: Alignment.bottomLeft,
                            padding: const EdgeInsets.all(8),
                            child: CustomText(
                              text: category.name,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          );
                        }).toList(),
                      );
                    }

                    if (filteredList.isEmpty) {
                      return const Center(
                        child: CustomText(text: 'No results found'),
                      );
                    }

                    return ListView.separated(
                      itemCount: filteredList.length,
                      separatorBuilder: (_, __) => const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final movie = filteredList[index];
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.network(
                                      'https://image.tmdb.org/t/p/w200${movie.posterPath}',
                                      height: 100,
                                      //  width: 130,
                                      fit: BoxFit.cover,
                                      errorBuilder: (_, __, ___) =>
                                          const Icon(Icons.broken_image),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                Expanded(
                                  child: Center(
                                    child: CustomText(
                                      text: movie.title ?? '',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      //     textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.more_horiz_outlined,
                                      color: AppColors.greyPurple,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
