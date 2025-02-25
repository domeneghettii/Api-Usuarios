const { v4: uuid4 } = require('uuid');
class Post{
    constructor(id, title, description, url, like, coments) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.url = url;
        this.like = like;
        this.coments = coments;
    }
}
