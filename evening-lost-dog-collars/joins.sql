SELECT dog_owners.name, lost_dog_collars.dog_name
  FROM dog_owners
  JOIN lost_dog_collars
  ON (dog_owners.dog_name = lost_dog_collars.dog_name);

SELECT dog_owners.dog_name, lost_dog_collars.dog_name
FROM dog_owners
FULL OUTER JOIN lost_dog_collars
ON (dog_owners.dog_name = lost_dog_collars.dog_name)
WHERE (dog_owners.name is NULL);

SELECT lost_dog_collars.dog_name, dog_owners.name
FROM dog_owners
RIGHT JOIN lost_dog_collars
ON (dog_owners.dog_name = lost_dog_collars.dog_name);

SELECT dog_owners.name, lost_dog_collars.dog_name
FROM dog_owners
LEFT JOIN lost_dog_collars
ON (dog_owners.dog_name = lost_dog_collars.dog_name);
