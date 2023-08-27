INSERT INTO photographers
VALUES 
  (1, 'Chris', 'Mastris', 'Amateur photographer.'),
  (2, 'Ansel', 'Adams', 'American landscape photographer and environmentalist.');


INSERT INTO categories
VALUES 
  (1, 'Landscapes', 'Natural landscapes, from fields and forests to mountains and valleys.'),
  (2, 'Mountains', 'Photos of mountains around the world.'),
  (3, 'Waterscapes', 'From rivers to oceans, water is a primary focus of these photos.');


INSERT INTO photos
VALUES 
  (
    1,
    'Lake Bled Viewpoint, Slovenia',
    'This photo was taken from Velika Osojnica, one of the highest viewpoints above Lake Bled.',
    '2022-08-28',
    1
  ),
  (
    2,
    'Fields, Devon',
    'This photo was taken during a short walk through the fields around Silverton, Devon.',
    '2022-04-16',
    1
  ),
  (
    3,
    'Lodgepole Pines, Lyell Fork of the Merced River',
    'This photo has a pictoralistic style. Prints of this picture are held in the collection of several art museums.',
    '1921-01-01',
    2
  );

INSERT INTO photo_category
VALUES
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (3, 1),
  (3, 3);