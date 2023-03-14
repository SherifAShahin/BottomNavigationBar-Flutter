int currentIndex = 0;

BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: currentIndex,
        selectedItemColor: HexColor(
          '#e3c099',
        ),
        unselectedItemColor: Colors.white,
        backgroundColor: HexColor(
          '#045255',
        ),
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex = index;
            print(index);
          });
        },
        items:
        [
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.albums,
              size: 35.0,
            ),
            label: 'Recommended',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.archive,
              size: 35.0,
            ),
            label: 'Will Read',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Ionicons.heart,
              size: 35.0,
            ),
            label: 'Liked',
          ),
        ],
      )
