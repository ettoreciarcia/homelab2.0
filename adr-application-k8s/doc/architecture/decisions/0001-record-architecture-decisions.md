# 1. Record architecture decisions

Date: 2023-05-22

## Status

To discuss

## Context

We need to record the process selecting the application that we will use as a workload for our clusters

## Decision

We will use [testing-microservices-demo](https://github.com/GoogleCloudPlatform/microservices-demo)

## Consequences

We need a Kubernetes Cluster to handle 12 microservices

1. adservice
2. cartservice
3. checkoutservice
4. currencyservice
5. emailservice
6. frontend
7. loadgenerator
8. paymentservice
9. productcatalogservice
10. recommendationservice
11. redis-cart  
12. shippingservice

We need a Redis Cluster too, We can decide whether to have it inside the cluster or outside

## Pros

- The project is still active
- We don't have to reinvent the wheel
- We have a load generator inside the same project to simulate users
- The project is cool, we have a real feedback on GUI on what we are doing :)

## Cons

