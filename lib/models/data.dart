import 'package:stardrew_bundles/models/bundle.dart';
import 'package:stardrew_bundles/models/resource.dart';
import 'package:stardrew_bundles/models/room.dart';

List<Room> data = [
  Room(
    title: 'Crafts Room',
    image: 'assets/images/rooms/Community_Center_Crafts_Room.png',
    bundles: [
      Bundle(
        title: 'Spring Foraging',
        image: 'assets/images/bundles/Bundle_Green.png',
        resources: [
          Resource(title: 'Wild Horseradish'),
          Resource(title: 'Daffodil'),
          Resource(title: 'Leek'),
          Resource(title: 'Dandelion'),
        ],
      ),
      Bundle(
        title: 'Summer Foraging',
        image: 'assets/images/bundles/Bundle_Yellow.png',
        resources: [
          Resource(title: 'Grape'),
          Resource(title: 'Spice Berry'),
          Resource(title: 'Sweet Pea'),
        ],
      ),
      Bundle(
        title: 'Fall Foraging Bundle',
        image: 'assets/images/bundles/Bundle_Red.png',
        resources: [
          Resource(title: 'Common Mushroom'),
          Resource(title: 'Wild Plum'),
          Resource(title: 'Hazelnut'),
          Resource(title: 'Blackberry'),
        ],
      ),
      Bundle(
        title: 'Winter Foraging Bundle',
        image: 'assets/images/bundles/Bundle_Teal.png',
        resources: [
          Resource(title: 'Winter Root'),
          Resource(title: 'Crystal Fruit'),
          Resource(title: 'Snow Yam'),
          Resource(title: 'Crocus'),
        ],
      ),
      Bundle(
        title: 'Construction Bundle',
        image: 'assets/images/bundles/Bundle_Red.png',
        resources: [
          Resource(title: 'Wood', quantity: 99),
          Resource(title: 'Wood', quantity: 99),
          Resource(title: 'Stone', quantity: 99),
          Resource(title: 'Hardwood', quantity: 99),
        ],
      ),
      Bundle(
        title: 'Exotic Foraging Bundle',
        image: 'assets/images/bundles/Bundle_Purple.png',
        resources: [
          Resource(title: 'Coconut'),
          Resource(title: 'Cactus Fruit'),
          Resource(title: 'Cave Carrot'),
          Resource(title: 'Red Mushroom'),
          Resource(title: 'Purple Mushroom'),
          Resource(title: 'Maple Syrup'),
          Resource(title: 'Oak Resin'),
          Resource(title: 'Pine Tar'),
          Resource(title: 'Morel'),
        ],
      ),
    ],
  ),
  Room(
    title: 'Pantry',
    image: 'assets/images/rooms/Community_Center_Pantry.png',
    bundles: [
      Bundle(
        title: 'Spring Crops Bundle',
        image: 'assets/images/bundles/Bundle_Green.png',
        resources: [
          Resource(title: 'Parsnip'),
          Resource(title: 'Green Bean'),
          Resource(title: 'Cauliflower'),
          Resource(title: 'Potato'),
        ],
      ),
      Bundle(
        title: 'Summer Crops Bundle',
        image: 'assets/images/bundles/Bundle_Yellow.png',
        resources: [
          Resource(title: 'Tomato'),
          Resource(title: 'Hot Pepper'),
          Resource(title: 'Blueberry'),
          Resource(title: 'Melon'),
        ],
      ),
      Bundle(
        title: 'Fall Crops Bundle',
        image: 'assets/images/bundles/Bundle_Orange.png',
        resources: [
          Resource(title: 'Corn'),
          Resource(title: 'Eggplant'),
          Resource(title: 'Pumpkin'),
          Resource(title: 'Yam'),
        ],
      ),
      Bundle(
        title: 'Quality Crops Bundle',
        image: 'assets/images/bundles/Bundle_Teal.png',
        resources: [
          Resource(
            title: 'Parsnip (Gold)',
            quantity: 5,
            image: 'assets/images/resources/24px-Parsnip.png',
          ),
          Resource(
            title: 'Melon (Gold)',
            quantity: 5,
            image: 'assets/images/resources/24px-Melon.png',
          ),
          Resource(
            title: 'Pumpkin (Gold)',
            quantity: 5,
            image: 'assets/images/resources/24px-Pumpkin.png',
          ),
          Resource(
            title: 'Corn (Gold)',
            quantity: 5,
            image: 'assets/images/resources/24px-Corn.png',
          ),
        ],
      ),
      Bundle(
        title: 'Animal Bundle',
        image: 'assets/images/bundles/Bundle_Red.png',
        resources: [
          Resource(title: 'Large Milk'),
          Resource(
            title: 'Large Egg (Brown)',
            image: 'assets/images/resources/24px-Large_Brown_Egg.png',
          ),
          Resource(title: 'Large Egg'),
          Resource(title: 'Large Goat Milk'),
          Resource(title: 'Wool'),
          Resource(title: 'Duck Egg'),
        ],
      ),
      Bundle(
        title: 'Artisan Bundle',
        image: 'assets/images/bundles/Bundle_Purple.png',
        resources: [
          Resource(title: 'Truffle Oil'),
          Resource(title: 'Cloth'),
          Resource(title: 'Goat Cheese'),
          Resource(title: 'Cheese'),
          Resource(title: 'Honey'),
          Resource(title: 'Jelly'),
          Resource(title: 'Apple'),
          Resource(title: 'Apricot'),
          Resource(title: 'Orange'),
          Resource(title: 'Peach'),
          Resource(title: 'Pomegranate'),
          Resource(title: 'Cherry'),
        ],
      ),
    ],
  ),
  Room(
    title: 'Fish Tank',
    image: 'assets/images/rooms/Community_Center_Fish_Tank.png',
    bundles: [
      Bundle(
        title: 'River Fish Bundle',
        image: 'assets/images/bundles/Bundle_Teal.png',
        resources: [
          Resource(title: 'Sunfish'),
          Resource(title: 'Catfish'),
          Resource(title: 'Shad'),
          Resource(title: 'Tiger Trout'),
        ],
      ),
      Bundle(
        title: 'Lake Fish Bundle',
        image: 'assets/images/bundles/Bundle_Green.png',
        resources: [
          Resource(title: 'Largemouth Bass'),
          Resource(title: 'Carp'),
          Resource(title: 'Bullhead'),
          Resource(title: 'Sturgeon'),
        ],
      ),
      Bundle(
        title: 'Ocean Fish Bundle',
        image: 'assets/images/bundles/Bundle_Blue.png',
        resources: [
          Resource(title: 'Sardine'),
          Resource(title: 'Tuna'),
          Resource(title: 'Red Snapper'),
          Resource(title: 'Tilapia'),
        ],
      ),
      Bundle(
        title: 'Night Fishing Bundle',
        image: 'assets/images/bundles/Bundle_Purple.png',
        resources: [
          Resource(title: 'Walleye'),
          Resource(title: 'Bream'),
          Resource(title: 'Eel'),
          Resource(title: 'Tilapia'),
        ],
      ),
      Bundle(
        title: 'Crab Pot Bundle',
        image: 'assets/images/bundles/Bundle_Purple.png',
        resources: [
          Resource(title: 'Lobster'),
          Resource(title: 'Crayfish'),
          Resource(title: 'Crab'),
          Resource(title: 'Cockle'),
          Resource(title: 'Mussel'),
          Resource(title: 'Shrimp'),
          Resource(title: 'Snail'),
          Resource(title: 'Periwinkle'),
          Resource(title: 'Oyster'),
          Resource(title: 'Clam'),
        ],
      ),
      Bundle(
        title: 'Specialty Fish Bundle',
        image: 'assets/images/bundles/Bundle_Red.png',
        resources: [
          Resource(title: 'Pufferfish'),
          Resource(title: 'Ghostfish'),
          Resource(title: 'Sandfish'),
          Resource(title: 'Woodskip'),
        ],
      ),
    ],
  ),
  Room(
    title: 'Boiler Room',
    image: 'assets/images/rooms/Community_Center_Boiler_Room.png',
    bundles: [
      Bundle(
        title: 'Blacksmith\'s Bundle',
        image: 'assets/images/bundles/Bundle_Red.png',
        resources: [
          Resource(title: 'Copper Bar'),
          Resource(title: 'Iron Bar'),
          Resource(title: 'Gold Bar'),
        ],
      ),
      Bundle(
        title: 'Geologist\'s Bundle',
        image: 'assets/images/bundles/Bundle_Purple.png',
        resources: [
          Resource(title: 'Quartz'),
          Resource(title: 'Earth Crystal'),
          Resource(title: 'Frozen Tear'),
          Resource(title: 'Fire Quartz'),
        ],
      ),
      Bundle(
        title: 'Adventurer\'s Bundle',
        image: 'assets/images/bundles/Bundle_Purple.png',
        resources: [
          Resource(title: 'Slime', quantity: 99),
          Resource(title: 'Bat Wing', quantity: 10),
          Resource(title: 'Solar Essence'),
          Resource(title: 'Void Essence'),
        ],
      ),
    ],
  ),
  Room(
      title: 'Bulletin Board',
      image: 'assets/images/rooms/Community_Center_Bulletin_Board.png',
      bundles: [
        Bundle(
          title: 'Chef\'s Bundle',
          image: 'assets/images/bundles/Bundle_Red.png',
          resources: [
            Resource(title: 'Maple Syrup'),
            Resource(title: 'Fiddlehead Fern'),
            Resource(title: 'Truffle'),
            Resource(title: 'Poppy'),
            Resource(title: 'Maki Roll'),
            Resource(title: 'Fried Egg'),
          ],
        ),
        Bundle(
          title: 'Dye Bundle',
          image: 'assets/images/bundles/Bundle_Teal.png',
          resources: [
            Resource(title: 'Red Mushroom'),
            Resource(title: 'Sea Urchin'),
            Resource(title: 'Sunflower'),
            Resource(title: 'Duck Feather'),
            Resource(title: 'Aquamarine'),
            Resource(title: 'Red Cabbage'),
          ],
        ),
        Bundle(
          title: 'Field Research Bundle',
          image: 'assets/images/bundles/Bundle_Blue.png',
          resources: [
            Resource(title: 'Purple Mushroom'),
            Resource(title: 'Nautilus Shell'),
            Resource(title: 'Chub'),
            Resource(title: 'Frozen Geode'),
          ],
        ),
        Bundle(
          title: 'Fodder Bundle',
          image: 'assets/images/bundles/Bundle_Yellow.png',
          resources: [
            Resource(title: 'Wheat', quantity: 10),
            Resource(title: 'Hay', quantity: 10),
            Resource(title: 'Apple', quantity: 3),
          ],
        ),
        Bundle(
          title: 'Enchanter\'s Bundle',
          image: 'assets/images/bundles/Bundle_Blue.png',
          resources: [
            Resource(title: 'Oak Resin'),
            Resource(title: 'Wine'),
            Resource(title: 'Rabbit\'s Foot'),
            Resource(title: 'Pomegranate'),
          ],
        ),
      ]),
  Room(
      title: 'Vault',
      image: 'assets/images/rooms/Community_Center_Vault.png',
      bundles: [
        Bundle(
          title: '2,500 Bundle',
          image: 'assets/images/bundles/Bundle_Red.png',
          resources: [
            Resource(
              title: '2,500g',
              image: 'assets/images/resources/18px-Gold.png',
            ),
          ],
        ),
        Bundle(
          title: '5,000 Bundle',
          image: 'assets/images/bundles/Bundle_Orange.png',
          resources: [
            Resource(
              title: '5,000g',
              image: 'assets/images/resources/18px-Gold.png',
            ),
          ],
        ),
        Bundle(
          title: '10,000 Bundle',
          image: 'assets/images/bundles/Bundle_Yellow.png',
          resources: [
            Resource(
              title: '10,000g',
              image: 'assets/images/resources/18px-Gold.png',
            ),
          ],
        ),
        Bundle(
          title: '25,000 Bundle',
          image: 'assets/images/bundles/Bundle_Purple.png',
          resources: [
            Resource(
              title: '25,000g',
              image: 'assets/images/resources/18px-Gold.png',
            ),
          ],
        ),
      ]),
  Room(
    title: 'Abandoned JojaMart',
    image: 'assets/images/rooms/JojaMart_Abandoned.png',
    bundles: [
      Bundle(
        title: 'The Missing Bundle',
        image: 'assets/images/bundles/Bundle_Purple.png',
        resources: [
          Resource(
            title: 'Silver or better quality Wine (any)',
            image: 'assets/images/resources/24px-Wine.png',
          ),
          Resource(title: 'Dinosaur Mayonnaise'),
          Resource(title: 'Prismatic Shard'),
          Resource(
            title: 'Gold quality Ancient Fruit',
            quantity: 5,
            image: 'assets/images/resources/24px-Ancient_Fruit.png',
          ),
          Resource(
            title: 'Gold or Iridium quality Void Salmon',
            image: 'assets/images/resources/24px-Void_Salmon.png',
          ),
          Resource(title: 'Caviar'),
        ],
      ),
    ],
  ),
];
