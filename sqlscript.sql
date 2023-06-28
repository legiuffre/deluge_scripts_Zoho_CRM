SELECT
		 tt."Actual Del - Dealer" as "Actual Del - Dealer",
		 tt."Cost per Mile - (Maint)" as "Cost per Mile - (Maint)",
		 tt."Del Change Counter" as "Del Change Counter",
		 tt."In Service Date" as "In Service Date",
		 tt."MPG" as "MPG",
		 tt."Non-Zonar" as "Non-Zonar",
		 tt."ORG vs ACT Del Date Duration" as "ORG vs ACT Del Date Duration",
		 tt."testyr1" as "testyr1",
		 tt."Truck Make" as "Truck Make",
		 tt."Truck Model" as "Truck Model",
		 tt."Truck Status" as "Truck Status",
		 tt."Truck VIN" as "Truck VIN",
		 tt."Truck Year" as "Truck Year",
		 tt."Id" as "Id",
		 tt."Weekly Payment" as "Weekly Payment",
		 tt."Truck Type" as "Truck Type",
		 pt."Fiscal Year" as "Fiscal Year",
		 pt."Manufacturer" as "Manufacturer",
		 pt."Product Category" as "Product Category",
		 pt."Re-Lease" as "Re-Lease",
		 pt."Sales Start Date" as "Sales Start Date",
		 pt."Unit Cost" as "Unit Cost",
		 pt."Id" as "ptId",
		 ct."In-Shop Date/Time" as "In-Shop Date/Time",
		 ct."Out-Shop Date/Time" as "Out-Shop Date/Time",
		 ct."Days in Shop" as "Days in Shop"
FROM  "Trucks (Zoho CRM)" tt
JOIN "Cases (Zoho CRM)" ct ON ct."Truck VIN"  = tt."id" 
JOIN "Products (Zoho CRM)" pt ON pt."id"  = tt."Product Name"  
ORDER BY "Manufacturer" 
