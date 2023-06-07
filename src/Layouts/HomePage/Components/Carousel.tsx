import { ReturnProduct } from "./ReturnProduct";
import { useEffect, useState } from "react";
import ProductModel from "../../../Models/ProductModel";
import { SpinnerLoading } from "../../Utils/SpinnerLoading";
import { Link } from "react-router-dom";

export const Carousel = () => {

    const [products, setProducts] = useState<ProductModel[]>([]);
    const [isLoading, setIsLoading] = useState(true);
    const [httpError, setHttpError] = useState(null);

    useEffect(() => {
        const fetchProducts = async () => {
            const baseUrl: string = "http://localhost:8081/products";

            const url: string = `${baseUrl}?page=0&size=6`;

            const response = await fetch(url);

            if (!response.ok) {
                throw new Error('Something went wrong!');
            }

            const responseJson = await response.json();

            const responseData = responseJson._embedded.products;

            const loadedProducts: ProductModel[] = [];

            for (const key in responseData) {
                loadedProducts.push({
                    product_id: responseData[key].product_id,
                    title: responseData[key].title,
                    artist: responseData[key].artist,
                    product_description: responseData[key].product_description,
                    quantities: responseData[key].quantities,
                    quantity_available: responseData[key].quantity_available,
                    category: responseData[key].category,
                    image: responseData[key].image,
                });
            }

            setProducts(loadedProducts);
            setIsLoading(false);
        };
        fetchProducts().catch((error: any) => {
            setIsLoading(false);
            setHttpError(error.message);
        })
    }, []);

    if (isLoading) {
        return (
            <SpinnerLoading/>
        )
    }

    if (httpError) {
        return (
            <div className='container m-5'>
                <p>{httpError}</p>
            </div>
        )
    }

    return (
        <div className='container mt-5' style={{ height: 550 }}>
            <div className='homepage-carousel-title'>
                <h3>Find your next art.</h3>
            </div>
            <div id='carouselExampleControls' className='carousel carousel-dark slide mt-5 
                d-none d-lg-block' data-bs-interval='false'>

                {/* Desktop */}
                <div className='carousel-inner'>
                    <div className='carousel-item active'>
                        <div className='row d-flex justify-content-center align-items-center'>
                            {products.slice(0, 3).map(product => (
                                <ReturnProduct product={product} key ={product.product_id} />
                            ))}
                        </div>
                    </div>
                    <div className='carousel-item'>
                        <div className='row d-flex justify-content-center align-items-center'>
                            {products.slice(4, 7).map(product => (
                                <ReturnProduct product={product} key ={product.product_id} />
                            ))}
                        </div>
                    </div>
                    {/* <div className='carousel-item'>
                        <div className='row d-flex justify-content-center align-items-center'>
                            {products.slice(8 ).map(product => (
                                <ReturnProduct product={product} key ={product.product_id} />
                            ))}
                        </div>
                    </div> */}
                </div>
                <button className='carousel-control-prev' type='button'
                    data-bs-target='#carouselExampleControls' data-bs-slide='prev'>
                    <span className='carousel-control-prev-icon' aria-hidden='true'></span>
                    <span className='visually-hidden'>Previous</span>
                </button>
                <button className='carousel-control-next' type='button'
                    data-bs-target='#carouselExampleControls' data-bs-slide='next'>
                    <span className='carousel-control-next-icon' aria-hidden='true'></span>
                    <span className='visually-hidden'>Next</span>
                </button>
            </div>

            {/* Mobile */}
            <div className='d-lg-none mt-3'>
                <div className='row d-flex justify-content-center align-items-center'>
                    <ReturnProduct product={products[6]} key={products[6].product_id}/>
                </div>
            </div>
            <div className='homepage-carousel-title mt-3'>
                <Link className='btn btn-outline-secondary btn-lg' to='/search'>View More</Link>
            </div>
        </div>
    );
}