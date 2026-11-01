# United Styles - Full-Stack E-Commerce Web Application

A full-featured PHP and MySQL/MariaDB E-Commerce web application that provides complete customer shopping, order checkout, cart management, user authentication, and a back-office administration panel.

---

## 🚀 Quick Start (Running Locally)

### Prerequisites
- **PHP**: PHP 8.2+ with `mysqli`, `pdo_mysql`, and `mbstring` extensions enabled.
- **Database**: MariaDB 10.4+ or MySQL 8.0+.
- **Browser**: Modern web browser (Chrome, Edge, Firefox).

---

### Local Environment Paths (Configured)
- **PHP Path**: `C:\Users\tawhe\.php\php.exe`
- **Database Binary**: `C:\Users\tawhe\.mariadb\mariadb-10.11.8-winx64\bin\mysqld.exe`
- **Database Name**: `onlinecart`
- **Database Port**: `3306`

---

### Step 1: Start Database Server
Open a terminal and start the database daemon:
```powershell
& "C:\Users\tawhe\.mariadb\mariadb-10.11.8-winx64\bin\mysqld.exe" --console
```

### Step 2: Start PHP Development Web Server
In the root directory of this project (`c:\Users\tawhe\.gemini\antigravity\scratch\Ecommerce`), execute:
```powershell
& "C:\Users\tawhe\.php\php.exe" -S localhost:8000
```

### Step 3: Access in Browser
- **Storefront**: [http://localhost:8000](http://localhost:8000)
- **Cart Gallery**: [http://localhost:8000/store.php](http://localhost:8000/store.php)
- **Admin Panel**: [http://localhost:8000/admin](http://localhost:8000/admin)

---

## 🔑 Default Credentials

### Admin Login
- **Login URL**: Click "My Account" -> "Login" on the header or visit [http://localhost:8000/admin/](http://localhost:8000/admin/)
- **Email**: `admin@gmail.com`
- **Password**: `admin123`

### Sample Customer Account
- **Email**: `khantawheed121@gmail.com`
- **Password**: `password`

---

## 📦 Product Catalog & Database Statistics

The system currently manages **73 active products** cataloged across **9 categories** and **6 major brands**:

### Categories Breakdown
| Category ID | Category Name | Products Count |
| :---: | :--- | :---: |
| **1** | Electronics | 17 |
| **2** | Ladies Fashion | 3 |
| **3** | Mens Fashion | 13 |
| **4** | Kids Fashion | 8 |
| **5** | Furnitures | 9 |
| **6** | Home Appliances | 11 |
| **7** | Electronics Gadgets | 11 |
| **8** | Books | 1 |
| **9** | Top Items | 0 |

### Brands Breakdown
| Brand ID | Brand Name | Products Count |
| :---: | :--- | :---: |
| **1** | HP | 5 |
| **2** | Samsung | 7 |
| **3** | Apple | 9 |
| **4** | Sony | 4 |
| **5** | LG | 4 |
| **6** | Cloth Brand | 19 |

---

## 🛠 Project Architecture & Directory Structure

```text
Ecommerce/
├── admin/                         # Administration Back-Office
│   ├── index.php                  # Admin Dashboard
│   ├── orders.php                 # Customer Orders Management & Deletion
│   ├── add_product.php            # Add New Product to Catalog
│   ├── add_user.php               # Register New Customer / Admin
│   ├── manage_users.php           # User Management & Editing
│   ├── clothes_list.php           # Fashion Catalog Management
│   ├── cosmetics_list.php         # Electronics & Cosmetics Catalog
│   ├── otherlist.php              # Miscellaneous Catalog Items
│   ├── ship.php                   # Shipping & Tracking Management
│   ├── userorder.php              # Seller Product Submissions & Review
│   └── include/                   # Admin Header, Sidebar, and JS Assets
│
├── css/                           # Styling (Bootstrap, Slick, Custom CSS)
│   ├── styl.css                   # Main responsive store styles
│   └── nouislider.min.css         # Price filter range slider
│
├── Database/
│   └── onlinecart.sql             # Full database schema and seed data
│
├── js/
│   ├── actions.js                 # Frontend AJAX (Catalog, Cart, Categories, Search)
│   ├── main.js                    # Sliders, zoom, quantity counters, navigation
│   └── sweetalert.min.js          # Modal alerts and notifications
│
├── product_images/                # Uploaded product image assets
├── action.php                     # Storefront AJAX API router (cart, categories, filters)
├── body.php                       # Homepage carousel, banners, featured products
├── cart.php                       # Shopping cart display and quantity updates
├── checkout.php                   # Customer delivery information & payment form
├── checkout_process.php           # Order submission & payment confirmation handler
├── config.php                     # Application settings & registration helper
├── db.php                         # Centralized MySQL database connection
├── footer.php                     # Store footer with navigation & scripts
├── header.php                     # Store navigation header, search, & cart badge
├── homeaction.php                 # Dynamic navigation bar & homepage AJAX queries
├── index.php                      # Main storefront landing page
├── login.php                      # Unified user & admin authentication router
├── orders.php                     # Orders redirect handler
├── product.php                    # Single product details view & reviews
├── register.php                   # New customer registration handler
├── sellproduct.php                # Customer product upload portal
└── store.php                      # Full catalog store with category & price filtering
```

---

## ⚙️ Key Technical Fixes Applied

1. **Category Navigation & Filtering**:
   - Resolved the issue where clicking categories on `index.php` required clicking "Cart Gallery" first.
   - Dynamic parameter routing (`store.php?cat_id=X`) now enables direct, instant catalog filtering from any page.
2. **Product Image Proportions**:
   - Fixed distorted portrait images (such as tall dress images) with responsive card containers and `object-fit: contain`.
3. **Cart & Database Integrity**:
   - Resolved `Field 'status' doesn't have a default value` by defining strict default schema compatibility in MySQL and `action.php`.
   - Fixed auto-increment `product_id` exceptions when inserting items via `admin/add_product.php` and `sellproduct.php`.
4. **Admin Panel Routing & Syntax**:
   - Corrected SQL queries with unclosed quotes in `admin/cosmetics_list.php` and `admin/userorder.php`.
   - Added root `orders.php` routing to eliminate 404 resource errors.
5. **Unified Authentication in `login.php`**:
   - Replaced broken hardcoded references to an external `admin` database with unified `admin_info` authentication inside `onlinecart`.

---

## 🧪 Automated Testing
Automated browser and user-flow tests are configured via **Playwright** (`python -m playwright install chromium`).
You can run automated E2E tests for catalog navigation, category filtering, product hover actions, and add-to-cart operations directly using Python.
