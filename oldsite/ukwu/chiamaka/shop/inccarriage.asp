<%
function carriage(weight,zone)
' tidy up any call errors
dim cost
if not isnumeric(weight) then
weight = 25000
weight = cint(weight)
end if
if not isnumeric(zone) then
zone = 12
zone = cint(zone)
end if
' to work
select case (zone)
case 1, 2, 3, 4' uk, scot & chan is
        select case True
        case weight < 700
        cost = 2.95
        case weight > 699 and weight < 900
        cost = 3.95
        case weight > 899 and weight < 1900
        cost = 4.95
        case weight > 1899 and weight < 3900
        cost = 7.49
        case weight > 3899 and weight < 5900
        cost = 7.95
        case weight > 5899 and weight < 7900
        cost = 8.95
        case weight > 7899 and weight < 9900
        cost = 9.49
        case weight > 9899 and weight < 29500
        cost = 10.99
        case weight > 29499
        cost = 0
        end select
        '
case 5' republic of ireland
        select case True
        case weight < 900
        cost = 5.95
        case weight > 899 and weight < 1400
        cost = 7.49
        case weight > 1399 and weight < 1900
        cost = 8.49
        case weight > 1899 and weight < 2400
        cost = 9.49
        case weight > 2399 and weight < 2900
        cost = 10.49
        case weight > 2899 and weight < 3400
        cost = 11.95
        case weight > 3399 and weight < 3900
        cost = 11.95
        case weight > 3899 and weight < 4400
        cost = 12.95
        case weight > 4399 and weight < 5400
        cost = 13.95
        case weight > 5399 and weight < 5900
        cost = 14.45
        case weight > 5899 and weight < 6900
        cost = 15.45
        case weight > 6899 and weight < 7900
        cost = 16.45
        case weight > 7899 and weight < 8900
        cost = 17.45
        case weight > 8899 and weight < 9900
        cost = 18.95
        case weight > 9899 and weight < 10900
        cost = 19.95
        case weight > 10899 and weight < 11900
        cost = 20.95
        case weight > 11899 and weight < 12900
        cost = 21.95
        case weight > 12899 and weight < 13900
        cost = 22.95
        case weight > 13899 and weight < 14900
        cost = 23.95
        case weight > 14899 and weight < 19900
        cost = 29.00
        case else
        cost = 0
        end select
case 6,7,8' belgium, netherlands, luxenbourg, france,germ,denmark,spain,italy,portugal,greece
        select case True
        case weight < 900
        cost = 5.95
        case weight > 899 and weight < 1400
        cost = 8.17
        case weight > 1399 and weight < 1900
        cost = 10.50
        case weight > 1899 and weight < 2400
        cost = 19.49
        case weight > 2399 and weight < 2900
        cost = 20.49
        case weight > 2899 and weight < 3400
        cost = 21.49
        case weight > 3399 and weight < 3900
        cost = 22.19
        case weight > 3899 and weight < 4400
        cost = 23.09
        case weight > 4399 and weight < 5400
        cost = 24.75
        case weight > 5399 and weight < 5900
        cost = 25.49
        case weight > 5899 and weight < 6900
        cost = 26.99
        case weight > 6899 and weight < 7900
        cost = 28.49
        case weight > 7899 and weight < 8900
        cost = 29.99
        case weight > 8899 and weight < 9900
        cost = 31.49
        case weight > 9899 and weight < 10900
        cost = 32.49
        case weight > 10899 and weight < 11900
        cost = 33.49
        case weight > 11899 and weight < 12900
        cost = 34.49
        case weight > 12899 and weight < 13900
        cost = 35.49
        case weight > 13899 and weight < 14900
        cost = 36.49
        case weight > 14899 and weight < 19900
        cost = 41.00
        case else
        cost = 0
        end select
case 9' rest of europe
        select case True
        case weight < 500
        cost = 4.99 
        case weight > 499 and weight < 900
        cost = 9.99
        case weight > 899 and weight < 1400
        cost = 14.25
        case weight > 1399 and weight < 1900
        cost = 18.30
        case weight > 1899 and weight < 2400
        cost = 23.40
        case weight > 2399 and weight < 2900
        cost = 25.10
        case weight > 2899 and weight < 3400
        cost = 26.80
        case weight > 3399 and weight < 3900
        cost = 28.50
        case weight > 3899 and weight < 4400
        cost = 30.20
        case weight > 4399 and weight < 5400
        cost = 31.90
        case weight > 5399 and weight < 5900
        cost = 34.30
        case weight > 5899 and weight < 6900
        cost = 36.70
        case weight > 6899 and weight < 7900
        cost = 38.10
        case weight > 7899 and weight < 8900
        cost = 41.50
        case weight > 8899 and weight < 9900
        cost = 43.90
        case weight > 9899 and weight < 10900
        cost = 45.80
        case weight > 10899 and weight < 11900
        cost = 47.70
        case weight > 11899 and weight < 12900
        cost = 49.60
        case weight > 12899 and weight < 13900
        cost = 51.50
        case weight > 13899 and weight < 14900
        cost = 53.40
        case weight > 14899 and weight < 19900
        cost = 63.00
        case else
        cost = 0
        end select
case 10' usa
select case True
        case weight < 500
        cost = 4.99 
        case weight > 499 and weight < 900
        cost = 9.99
        case weight > 899 and weight < 1400
        cost = 14.25
        case weight > 1399 and weight < 1900
        cost = 18.30
        case weight > 1899 and weight < 2400
        cost = 25.90
        case weight > 2399 and weight < 2900
        cost = 28.85
        case weight > 2899 and weight < 3400
        cost = 31.80
        case weight > 3399 and weight < 3900
        cost = 34.75
        case weight > 3899 and weight < 4400
        cost = 37.70
        case weight > 4399 and weight < 5400
        cost = 43.00
        case weight > 5399 and weight < 5900
        cost = 45.35
        case weight > 5899 and weight < 6900
        cost = 50.05
        case weight > 6899 and weight < 7900
        cost = 54.75
        case weight > 7899 and weight < 8900
        cost = 59.45
        case weight > 8899 and weight < 9900
        cost = 64.15
        case weight > 9899 and weight < 10900
        cost = 67.75
        case weight > 10899 and weight < 11900
        cost = 71.35
        case weight > 11899 and weight < 12900
        cost = 74.95
        case weight > 12899 and weight < 13900
        cost = 78.55
        case weight > 13899 and weight < 14900
        cost = 82.15
        case weight > 14899 and weight < 19900
        cost = 96.15
        case else
        cost = 0
        end select
case 11' far east & australia
        select case True
        case weight < 900
        cost = 10.95
        case weight > 899 and weight < 1400
        cost = 15.95
        case weight > 1399 and weight < 1900
        cost = 21.95
        case weight > 1899 and weight < 2400
        cost = 30.45
        case weight > 2399 and weight < 2900
        cost = 33.15
        case weight > 2899 and weight < 3400
        cost = 35.85
        case weight > 3399 and weight < 3900
        cost = 38.55
        case weight > 3899 and weight < 4400
        cost = 41.25
        case weight > 4399 and weight < 5400
        cost = 46.20
        case weight > 5399 and weight < 5900
        cost = 48.45
        case weight > 5899 and weight < 6900
        cost = 52.95
        case weight > 6899 and weight < 7900
        cost = 57.45
        case weight > 7899 and weight < 8900
        cost = 61.95
        case weight > 8899 and weight < 9900
        cost = 66.45
        case weight > 9899 and weight < 10900
        cost = 70.85
        case weight > 10899 and weight < 11900
        cost = 75.25
        case weight > 11899 and weight < 12900
        cost = 19.65
        case weight > 12899 and weight < 13900
        cost = 84.05
        case weight > 13899 and weight < 14900
        cost = 88.45
        case weight > 14899 and weight < 19900
        cost = 109.55
        case else
        cost = 0
        end select
case 12' rest of the world
        select case True
        case weight < 900
        cost = 10.95
        case weight > 899 and weight < 1400
        cost = 15.95
        case weight > 1399 and weight < 1900
        cost = 21.95
        case weight > 1899 and weight < 2400
        cost = 34.65
        case weight > 2399 and weight < 2900
        cost = 38.55
        case weight > 2899 and weight < 3400
        cost = 42.45
        case weight > 3399 and weight < 3900
        cost = 46.35
        case weight > 3899 and weight < 4400
        cost = 50.25
        case weight > 4399 and weight < 5400
        cost = 57.75
        case weight > 5399 and weight < 5900
        cost = 61.35
        case weight > 5899 and weight < 6900
        cost = 68.55
        case weight > 6899 and weight < 7900
        cost = 75.75
        case weight > 7899 and weight < 8900
        cost = 82.95
        case weight > 8899 and weight < 9900
        cost = 90.15
        case weight > 9899 and weight < 10900
        cost = 96.15
        case weight > 10899 and weight < 11900
        cost = 102.15
        case weight > 11899 and weight < 12900
        cost = 108.15
        case weight > 12899 and weight < 13900
        cost = 114.15
        case weight > 13899 and weight < 14900
        cost = 120.15
        case weight > 14899 and weight < 19900
        cost = 146.15
        case else
        cost = 0
        end select
end select
if isnull(cost) or cost = "" then cost = 0
carriage = cost
end function
%>



