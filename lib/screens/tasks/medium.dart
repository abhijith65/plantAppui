import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return MaterialApp(
      home: Splash(),
    );
  }
}
class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //throw UnimplementedError();
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Image(
              image: NetworkImage("data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAgVBMVEX///8jHx4AAAD4+PgfGhnS0tEXERAMAADl5ON0c3KkpKOHhoTf3t58e3o4NjUYEhEbFxVXVFWbmpmMioomISC7u7rv7++1tbQTCwkcFxZLSUjGxcXMy8vU1NRramiUlJNAPTytrKxTUlAsKSdhYGAzMDBHRUM9OzlnZWSCgIAUCw2lYfkjAAAEuUlEQVR4nO2Z21riOhhA0zS0FVEQBFqRg444ut//AXeTHpK0MDMt+T5v1rrRJiH9V/mbE0IAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPwE8aRkdqnGqcgmfWJTs2+v99m1TjLbyatfa/qt43i1La/GMYpMliwuVMx0xaH6fyn7VDeN3KKX477TSayLv6v/j/r/2Ku+t0XmdtG1OO7GC5aGURTJdb/iIYmipO55mkZdasNH5ZQVuTztfMN5FOX31f/LvPyUb7gqixaNoe7U/7ThTsfxcKvh4qVXHuvygYZaUr5vxhsWT704NiaOmw0j2U0vsUy7hhezVBsumqJEdzWXzss20LB5bg7HPIzh/KtbrlTHsBNcTWlYP/g4W99JHY5ycm2oYdJ74eZRGMNIbvzirXdDY7jpf9gYLmxqxUepvG9iqGHvLm8ylGG+8otPaoxhGagqym/xV3M52DA/+v2fVSjDSHqlk6p0uKHYPJcxpU2cgw07cbzWcQQxfHNLP+ZjDethvzYZYejF8VSEM1TnC4VjDMV9buMcbqgeL8URwtCbbXWQi7GGegZrJrbhhpE72ehVx+I5gGGy0j29t2V6ti8OjyMNxUfRvk7DDBN97cz6+lnN784BDOXuMHfHeCM0K4exjmHc8GfD6uMjDOXOPJw2jqXpKESWyvVeurPtr3IaP4lndXVNYxP6kuFOtrk20HCtx/C81SlXHcWLyEMYbsVLYfNwbW7WM3TWpPZVuWRYBTvKUHwWttHWfK2hDPVzb2bb8i56ZP0RQ/1002VV+1uZkTWQoV48qGqbqDNWj/ZdwyRv+IvhRLYj82BD/YYoZbvZhjN8q/8KcUgiNRc9w6sr756hyfLJSMO3NgG+5tUzD2UokionzBBt8qRr+M+zhY67bj3cUOiZ6rMOLJ2GNDRD82sdX3yLoU60eoX0D4ZVSlpDvSHUGXDfNA9mGFdLkThpYhprqFfL+Xff8EIn5Zql2Ye0hmaa/xBx2mx4ghlWDy0z78HmFsPPhT0zcA23dppsKPdo6tQxFN8mye0twxnqh5fcn1qvkYZLnQvNuY9rqB38bai540PXMDPtyo7rqnCG1amWapdN4wzN4UB77OMaCj3l5O6LaLJm2zXUg2gVRxbasF7eLz7EeMOj7iP9bi49Q51+ycG2nbg7ScdwX8XRnB0FNKz3m/VUNsZw/Wi+J3s26RlWR7Pt6ldPm7bSMTRLSJsIIQ3NmUG55r5omO8mry5ZY6he9vp6PT0U5hwqP9lM9AzFyjg9L2exyNZP+kK1Wesa7kwczXMKaWjOn9rz7z/sLTTLxjBSVUFqTj6UdA8mfUPxbk4bc9N8YRq357Suoem13cAENSwTx55mXF95a1Jr6KBksXV77xiKJ+m2TtJJW+MZlsOVPc0IalguR+xJ0FBDNU/leer3btcPNdNcFnXzXH45r7ZnKMpH1cZ0q6H5aae1mkp7mveX354qQ2ULHg/T3pm8+e3JCy9+e6qan1deaxNHa7WU/3lx3PLb00+QzWbZxZ0KAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQIf/AUVlULlzJuPEAAAAAElFTkSuQmCC" ),height: 200,
            )));
  }
}