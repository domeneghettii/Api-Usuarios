const { v4: uuid4 } = require('uuid');
class Post{
    constructor(id, title, description, image, like, coments) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.image = image;
        this.like = like;
        this.coments = coments;
    }
}
