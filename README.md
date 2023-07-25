A small repo to demostrate a bug in Prisma 5.0.0

To reproduce:

```
yarn install
```

Then run the SQL inside `script.sql` . Update the database url in `.env` with the credentials to run this on the DB you ran the script on.

```
npx prisma db pull
```

Checkout `prisma/schema.prisma`.


```
npx prisma db pull
```

Checkout `prisma/schema.prisma` again, see the duplicate comment.