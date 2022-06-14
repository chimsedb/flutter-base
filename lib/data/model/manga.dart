List<Manga> mangaList = [
  Manga(
    id: '6292782ed2c7e40058bad2e1',
    name: 'One piece',
    image:
        'https://vnw-img-cdn.popsww.com/api/v2/containers/file2/cms_topic/vertical_poster-b33e71e5326d-1654076291879-mfE096Rd.png?v=0&maxW=260&format=webp',
    playListIds: [
      '5e0afec445dbdb003d3cb080',
      '6141a48053dc390058e1cccb',
      '60f6b942ae8161005ac0e208',
      '605b01125727e40034c064cf',
      '5f46194d41c18100343c6cdf',
    ],
  ),
  Manga(
    id: '6292782ed2c7e40058bad2e1',
    name: 'Naruto Shippuden',
    image:
        'https://vnw-img-cdn.popsww.com/api/v2/containers/file2/cms_topic/vertical_poster-0d0f6d9613c0-1650525131853-ViXCOrqX.png?v=0&maxW=260&format=webp',
    playListIds: [
      '6245333485f552005c187a94',
      '620dc36716f239d22defc790',
      '61f21ae12eae56005f5024da',
      '61ea91b94f37188062f1e9c1',
      '61e7d5d065ba4364fb1189af',
    ],
  ),
  Manga(
    id: '6292782ed2c7e40058bad2e1',
    name: 'Demon Slayer',
    image:
        'https://vnw-img-cdn.popsww.com/api/v2/containers/file2/cms_topic/vertical_poster-d87f9c73eae6-1654076410828-by4TNV1a.png?v=0&maxW=260&format=webp',
    playListIds: [
      '61cf25eaf591bc00566d7f9d',
      '61c44e7877d89e0058cfea4f',
      '61bdaece41ab0d0059bc3130',
      '62345a5d9a9f5e0057df4521',
      '5f48de9942243d00353e7c31',
      '5fe3fd603df160003464a4cc',
      '5fbf1bd7ca8af00034b842b7',
    ],
  ),
  Manga(
    id: '6292782ed2c7e40058bad2e1',
    name: 'Detective Conan',
    image:
    'https://vnw-img-cdn.popsww.com/api/v2/containers/file2/cms_topic/vertical_poster_publishing-30d900f0587c-1632451724841-QnBtY2L0.png?v=0&maxW=260&format=webp',
    playListIds: [
      '6232e52130ef34005946cd5e',
      '618de81581861671d568c857',
      '5f45cfd6c18e1000348e3588',
      '614d3b81194fd0005c366666',
      '5fc72fb2ca8af00034b8489a',
      '5fb243f52b1bd200354e50eb',
      '5f97ba5dba9c7e003490de24',
      '5fc72adbca8af00034b847fc',
      '5f6d5740c2902900342d90e1',
      '5fc72566ca8af00034b847c1',
      '5f3a28ca4b64f5bc5c7f3269',
    ],
  ),
  Manga(
    id: '6292782ed2c7e40058bad2e1',
    name: 'Boruto',
    image:
    'https://vnw-img-cdn.popsww.com/api/v2/containers/file2/cms_topic/vertical_poster_publishing-d218a10491d6-1650084647903-XJoSUTig.png?v=0&maxW=260&format=webp',
    playListIds: [
      '62984357f4f4b10063c7d9af',
      '6257d2f9d115241b2dae1b89',
      '624d1f77d115241b2dae1964',
    ],
  ),
];

class Manga {
  final String id;
  final String name;
  final String image;
  final List<String> playListIds;

  Manga({
    required this.id,
    required this.name,
    required this.image,
    required this.playListIds,
  });
}
