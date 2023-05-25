# 1. Application to run

Date: 2023-05-22

## Status

To discuss

## Context


We need an application that allows us to test a workload on our Kubernetes cluster

## Decision


The possible options are

### 1 **[Microservices-demo](https://github.com/GoogleCloudPlatform/microservices-demo) (From Google)**
This one can be a good fit, It has pros which we will analyze later


### 2 **Write our own application with a sample backend and frontend**
Too much time consumption and in this phase we shouldn't waste energy reinventing the wheel.


### 3 **[sock shop](https://github.com/microservices-demo/microservices-demo)**
The project is inactive, no more features added.

### 4 [httpbin.org](https://httpbin.org/)
Just a sample webserver that reply with header sent in the request



## Architecture of microservices-demo

![architecture](../architecture-microservices.png)

## Consequences

We need a Kubernetes Cluster to handle 12 microservices

| Service                                              | Language      | Description                                                                                                                       |
| ---------------------------------------------------- | ------------- | --------------------------------------------------------------------------------------------------------------------------------- |
| [frontend](/src/frontend)                           | Go            | Exposes an HTTP server to serve the website. Does not require signup/login and generates session IDs for all users automatically. |
| [cartservice](/src/cartservice)                     | C#            | Stores the items in the user's shopping cart in Redis and retrieves it.                                                           |
| [productcatalogservice](/src/productcatalogservice) | Go            | Provides the list of products from a JSON file and ability to search products and get individual products.                        |
| [currencyservice](/src/currencyservice)             | Node.js       | Converts one money amount to another currency. Uses real values fetched from European Central Bank. It's the highest QPS service. |
| [paymentservice](/src/paymentservice)               | Node.js       | Charges the given credit card info (mock) with the given amount and returns a transaction ID.                                     |
| [shippingservice](/src/shippingservice)             | Go            | Gives shipping cost estimates based on the shopping cart. Ships items to the given address (mock)                                 |
| [emailservice](/src/emailservice)                   | Python        | Sends users an order confirmation email (mock).                                                                                   |
| [checkoutservice](/src/checkoutservice)             | Go            | Retrieves user cart, prepares order and orchestrates the payment, shipping and the email notification.                            |
| [recommendationservice](/src/recommendationservice) | Python        | Recommends other products based on what's given in the cart.                                                                      |
| [adservice](/src/adservice)                         | Java          | Provides text ads based on given context words.                                                                                   |
| [loadgenerator](/src/loadgenerator)                 | Python/Locust | Continuously sends requests imitating realistic user shopping flows to the frontend.                                              |


We need a Redis Cluster too, We can decide whether to have it inside the cluster or outside

## Pros

- The project is still active
- We don't have to reinvent the wheel
- The application demo comes with a background job that creates realistic usage patterns on the website using
- The project is cool, we have a real feedback on GUI on what we are doing :)
- Demo to take inspiration from

## Cons

