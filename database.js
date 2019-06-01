module.exports = {
  mysql: {
    connectionLimit: 10,
    host: 'localhost',
    user: 'root',
    password: '123',
    database: 'aaa_academy'
  },
  pgsql: {
    host: 'ec2-107-20-185-27.compute-1.amazonaws.com',
    database: 'd7fs89i339heoh',
    user: 'qsjiwwqxcwesvw',
    password:
      '3f39b1cb5f9f0db4477f13de1956aae5eaab562094b9014f7af8c59d55383c88',
    port: 5432,
    ssl: true,
    max: 20,
    min: 4,
    idleTimeoutMillis: 100000,
    connectionTimeoutMillis: 100000
  }
};
