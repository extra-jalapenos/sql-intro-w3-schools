<!-- paste this into https://mermaid.live/ -->

erDiagram
    CUSTOMER {
        int CustomerID PK
        string CustomerName
        string ContactName
        string Address
        string City
        int PostalCode
        string Country
    }

    CATEGORY {
        int CategoryID PK
        string CategoryName
        string Description
    }

    EMPLOYEE {
        int EmployeeID PK
        string LastName
        string FirstName
        date BirthDate
        string Photo
        string Notes
    }

    PRODUCT {
        id ProductID PK
        string ProductName
        id SupplierID FK
        id CategoryID FK
        string Unit
        float Price
    }

    ORDER_DETAILS {
        id OrderDetailID PK
        id OrderID FK
        id ProductID FK
        int Quantity
    }

    ORDER {
        id OrderID PK
        id CustomerID FK
        id EmployeeID FK
        date OrderDate
        id ShipperID FK
    }

    SUPPLIER {
        id SupplierID PK
        string SupplierName
        string ContactName
        string Address
        string City
        string PostalCode
        string Country
        string Phone
    }

    SHIPPER {
        int ShipperID PK
        string ShipperName
        string Phone
    }

    CUSTOMER ||--o{ ORDER : places
    ORDER ||--|| ORDER_DETAILS : has
    ORDER ||--|| EMPLOYEE : packed_by
    ORDER_DETAILS ||--|| PRODUCT : specified_by
    PRODUCT }o--|| SUPPLIER : supplies
    PRODUCT ||--|| CATEGORY : is_sorted_in
    SHIPPER ||--o{ ORDER : ships
