var db_mssql = {
    user        :process.env.SQL_USER,
    password    :process.env.SQL_PASSWORD,
    server      :process.env.SQL_SERVER,
    database    :process.env.SQL_DATABASE,
    //port        :process.env.SQL_PORT,
    options: {
        enableArithAbort: true,
        encrypt: true
    },
    pool: {
        max: 10,
        min: 2,
        idleTimeoutMillis: 30000
    }
}

var db_eshop = {
    client: 'mssql',
    connection: {
        user        :process.env.SQL_USER,
        password    :process.env.SQL_PASSWORD,
        host        :process.env.SQL_SERVER, // For docker => docker inspect [containerid]
        database    :process.env.SQL_DATABASE,
        options: {
            encrypt: true,
            enableArithAbort: true
        },
    },
    //port: process.env.SQL_PORT,
    pool: {
        min: 0,
        max: 10 
    }
};

var storage = {
    fs: {
        provider: "fs",
        destination: "./uploads"
    },
    azure: {
        provider: "azureblob",
        container: "container",
        accountName: "accountName",
        host: "host.blob.core.windows.net",
        accessKey: "accessKey"
    }
};

module.exports = {
    db_mssql: db_mssql,
    db_eshop: db_eshop,
    storage: storage,
    azureAuthenticate: false,
    secretKey: 'ilovejavascript'
};