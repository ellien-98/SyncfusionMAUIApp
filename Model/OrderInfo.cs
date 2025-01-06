using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SyncfusionMAUIApp
{
    public class OrderInfo
    {
        private string? orderID;
        private string? customerID;
        private string? customer;
        private string? shipCity;
        private string? shipCountry;

        public string OrderID
        {
            get 
            {   
                if(orderID!=null)
                {
                    return orderID;
                }
                else
                {
                    return string.Empty;
                }
            }
            set { this.orderID = value; }
        }

        public string CustomerID
        {
            get 
            { 
                if(customerID!=null)
                {
                    return customerID;
                }
                else
                {
                    return string.Empty;
                } 
            }
            set { this.customerID = value; }
        }

        public string ShipCountry
        {
            get 
            { 
                if(shipCountry!=null)
                {
                    return shipCountry;
                }
                else
                {
                    return string.Empty;
                } 
            }  
            set { this.shipCountry = value; }
        }

        public string Customer
        {
            get 
            { 
                if(this.customer!=null)
                {
                    return this.customer;;
                }
                else
                {
                    return string.Empty;
                } 
            }
            set { this.customer = value; }
        }

        public string ShipCity
        {
            get 
            {
                if(shipCity!=null)
                {
                    return shipCity;
                }
                else
                {
                    return string.Empty;
                }   
            }
            set { this.shipCity = value; }
        }

        public OrderInfo(string orderId, string customerId, string country, string customer, string shipCity)
        {
            this.OrderID = orderId;
            this.CustomerID = customerId;
            this.Customer = customer;
            this.ShipCountry = country;
            this.ShipCity = shipCity;
        }
    }
}
