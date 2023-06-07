class ProductModel {
    product_id: number;
    title: string;
    artist?: string;
    product_description?: string;
    quantities?: number;
    quantity_available?: number;
    category?: string;
    image?: string;

    constructor (product_id: number, title: string, artist: string, product_description: string, 
        quantities: number, quantity_available: number, category: string, image: string) {
            this.product_id = product_id;
            this.title = title;
            this.artist = artist;
            this.product_description = product_description;
            this.quantities = quantities;
            this.quantity_available = quantity_available;
            this.category = category;
            this.image = image;
    }
}

export default ProductModel;