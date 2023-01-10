import 'package:fl_components/theme/app_themes.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
   
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {

  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  
  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if(scrollController.position.pixels >= scrollController.position.maxScrollExtent){
        // add5();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if(isLoading) return;

    isLoading = true;
    setState(() {
      
    });

    await Future.delayed(const Duration(seconds: 2));

    add5();

    isLoading = false;
    setState(() {
      
    });
  }

  void add5(){
    final lastId = imagesIds.last;
    imagesIds.addAll(
      [1, 2, 3, 4, 5].map((e) => lastId + e)
    );
    setState(() {
      
    });
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));

    final lastId = imagesIds.last;
    imagesIds.clear();

    imagesIds.add(lastId + 1);
    add5();

  }


  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      // Envolvemos el listview con este widget para "eliminar" el notch superior e inferior
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        // Superpone unos widgets con otros
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppThemes.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}'),
                  );
                }
              ),
            ),
            // Si la carga es verdadera mostrar el widget de carga
            if(isLoading)
              Positioned(
                child: _LoadingIcon(),
                bottom: 15,
                left: (size.width / 2) - 30,
              ),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.6),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppThemes.primary,
      ),
    );
  }
}