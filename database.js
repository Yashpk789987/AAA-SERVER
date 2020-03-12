module.exports = {
  mysql: {
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '123',
    database: 'aaa_academy'
  },
  pgsql: {
    host: 'ec2-54-157-78-113.compute-1.amazonaws.com',
    database: 'daeupgee5aigjo',
    user: 'gjrnwafxvimgbx',
    password:
      'e55c3976d9afc7c4dba3e1ffa742a04017a9f49c9b46928c5c1bf3eb58a3aecf',
    port: 5432,
    ssl: true,
    max: 20,
    min: 4,
    idleTimeoutMillis: 100000,
    connectionTimeoutMillis: 100000
  }
};
