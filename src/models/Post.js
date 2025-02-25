const { v4: uuid4 } = require('uuid');

class Post{
    constructor(title, description, url, like, coments) {
        this.id = uuid4();
        this.title = title;
        this.description = description;
        this.url = url;
        this.like = like;
        this.coments = coments;
    }
}
module.exports = Post;