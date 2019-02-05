/// @description Damage Code
damageInt = irandom_range(1,32);
enemyHealth -= damageInt;
instance_destroy(other);