const { v4: uuid4 } = require('uuid');
class Post{
    constructor(id, title, description, image) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.image = image;
    }
}
