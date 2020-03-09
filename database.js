module.exports = {
  mysql: {
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '123',
    database: 'aaa_academy'
  },
  pgsql: {
    host: 'ec2-52-45-14-227.compute-1.amazonaws.com',
    database: 'd6tb4kmvlj38ko',
    user: 'bzajlkhnnyaxoh',
    password:
      '5dbb7b83ea4222df2f7fe39e56ebbf083fb72727d45f7ba4c98104514ca22243',
    port: 5432,
    ssl: true,
    max: 20,
    min: 4,
    idleTimeoutMillis: 100000,
    connectionTimeoutMillis: 100000
  }
};
