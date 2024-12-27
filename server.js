const Hapi = require('@hapi/hapi');
const axios = require('axios');

const server = Hapi.server({
    port: 3000,
    host: 'localhost',
});

server.route({
    method: 'POST',
    path: '/api/items',
    handler: async (request, h) => {
        const { name, description } = request.payload;

        // Kirim data ke Laravel
        await axios.post('http://localhost:8000/api/items', { name, description });

        return { message: 'Item forwarded to Laravel successfully' };
    }
});

const init = async () => {
    await server.start();
    console.log('Server running on %s', server.info.uri);
};

init();