df <- read.csv("/Users/venkateshanandaram/Downloads/nhis_00005.csv")

df <- df[ -c(1:5,8:15) ]

df <- df[df$AGE != '999', ]
df <- df[df$AGE != '997', ]

df$REGION <- ifelse(df$REGION == '1', 'Northeast', df$REGION)
df$REGION <- ifelse(df$REGION == '2', 'North Central/Midwest', df$REGION)
df$REGION <- ifelse(df$REGION == '3', 'South', df$REGION)
df$REGION <- ifelse(df$REGION == '4', 'West', df$REGION)

df$URBRRL <- ifelse(df$URBRRL == '1', 'Large central metro', df$URBRRL)
df$URBRRL <- ifelse(df$URBRRL == '2', 'Large fringe metro', df$URBRRL)
df$URBRRL <- ifelse(df$URBRRL == '3', 'Medium and small metro', df$URBRRL)
df$URBRRL <- ifelse(df$URBRRL == '4', 'Nonmetropolitan', df$URBRRL)

df <- df[df$SEX != '7', ]
df <- df[df$SEX != '9', ]
df$SEX <- ifelse(df$SEX == '1', 'Male', df$SEX)
df$SEX <- ifelse(df$SEX == '2', 'Female', df$SEX)

df <- df[df$SEXORIEN != '7', ]
df <- df[df$SEXORIEN != '8', ]
df$SEXORIEN <- ifelse(df$SEXORIEN == '0', 'None', df$SEXORIEN)
df$SEXORIEN <- ifelse(df$SEXORIEN == '1', 'Lesbian/gay', df$SEXORIEN)
df$SEXORIEN <- ifelse(df$SEXORIEN == '2', 'Straight', df$SEXORIEN)
df$SEXORIEN <- ifelse(df$SEXORIEN == '3', 'Bisexual', df$SEXORIEN)
df$SEXORIEN <- ifelse(df$SEXORIEN == '4', 'Other', df$SEXORIEN)
df$SEXORIEN <- ifelse(df$SEXORIEN == '5', 'Other', df$SEXORIEN)

df <- df[df$MARST != '99', ]
df$MARST <- ifelse(df$MARST == '00', 'Never married', df$MARST)
df$MARST <- ifelse(df$MARST == '11', 'Married', df$MARST)
df$MARST <- ifelse(df$MARST == '12', 'Seperated', df$MARST)
df$MARST <- ifelse(df$MARST == '13', 'Seperated', df$MARST)
df$MARST <- ifelse(df$MARST == '20', 'Widowed', df$MARST)
df$MARST <- ifelse(df$MARST == '30', 'Divorced', df$MARST)
df$MARST <- ifelse(df$MARST == '40', 'Seperated', df$MARST)
df$MARST <- ifelse(df$MARST == '50', 'Never married', df$MARST)

df <- df[df$MARRIEDEV != '9', ]
df <- df[df$MARRIEDEV != '8', ]
df <- df[df$MARRIEDEV != '7', ]
df$MARRIEDEV <- ifelse(df$MARRIEDEV == '0', 'Never married', df$MARRIEDEV)
df$MARRIEDEV <- ifelse(df$MARRIEDEV == '1', 'Living with partner', df$MARRIEDEV)
df$MARRIEDEV <- ifelse(df$MARRIEDEV == '2', 'Living with spouse', df$MARRIEDEV)

df <- df[df$RACENEW != '999', ]
df <- df[df$RACENEW != '997', ]
df$RACENEW <- ifelse(df$RACENEW == '100', 'White', df$RACENEW)
df$RACENEW <- ifelse(df$RACENEW == '200', 'Black', df$RACENEW)
df$RACENEW <- ifelse(df$RACENEW == '300', 'Native', df$RACENEW)
df$RACENEW <- ifelse(df$RACENEW == '400', 'Asian', df$RACENEW)
df$RACENEW <- ifelse(df$RACENEW == '500', 'Other', df$RACENEW)
df$RACENEW <- ifelse(df$RACENEW == '542', 'Native', df$RACENEW)
df$RACENEW <- ifelse(df$RACENEW == '998', 'Other', df$RACENEW)

df <- df[df$HISPETH != '93', ]
df$HISPETH <- ifelse(df$HISPETH == '10', 'Not Hispanic', df$HISPETH)
df$HISPETH <- ifelse(df$HISPETH == '20', 'Mexican', df$HISPETH)
df$HISPETH <- ifelse(df$HISPETH == '60', 'Other Hispanic', df$HISPETH)

df <- df[df$HISPETH != '93', ]
df$HISPETH <- ifelse(df$HISPETH == '10', 'Not Hispanic', df$HISPETH)
df$HISPETH <- ifelse(df$HISPETH == '20', 'Mexican', df$HISPETH)
df$HISPETH <- ifelse(df$HISPETH == '60', 'Other Hispanic', df$HISPETH)

df$HISPYN <- ifelse(df$HISPYN == '1', FALSE, df$HISPYN)
df$HISPYN <- ifelse(df$HISPYN == '2', TRUE, df$HISPYN)

df <- df[df$USBORN != '99', ]
df <- df[df$USBORN != '98', ]
df <- df[df$USBORN != '97', ]
df$USBORN <- ifelse(df$USBORN == '10', FALSE, df$USBORN)
df$USBORN <- ifelse(df$USBORN == '20', TRUE, df$USBORN)

df <- df[df$CITIZEN != '7', ]
df <- df[df$CITIZEN != '8', ]
df <- df[df$CITIZEN != '9', ]
df$CITIZEN <- ifelse(df$CITIZEN == '1', FALSE, df$CITIZEN)
df$CITIZEN <- ifelse(df$CITIZEN == '2', TRUE, df$CITIZEN)

df <- df[df$NOWAF != '7', ]
df <- df[df$NOWAF != '8', ]
df <- df[df$NOWAF != '9', ]
df$NOWAF <- ifelse(df$NOWAF == '0', FALSE, df$NOWAF)
df$NOWAF <- ifelse(df$NOWAF == '1', FALSE, df$NOWAF)
df$NOWAF <- ifelse(df$NOWAF == '2', TRUE, df$NOWAF)

df <- df[df$ARMFEV != '97', ]
df <- df[df$ARMFEV != '98', ]
df <- df[df$ARMFEV != '99', ]
df$ARMFEV <- ifelse(df$ARMFEV == '00', FALSE, df$ARMFEV)
df$ARMFEV <- ifelse(df$ARMFEV == '11', FALSE, df$ARMFEV)
df$ARMFEV <- ifelse(df$ARMFEV == '12', FALSE, df$ARMFEV)
df$ARMFEV <- ifelse(df$ARMFEV == '20', TRUE, df$ARMFEV)

df <- df[df$EDUC != '997', ]
df <- df[df$EDUC != '999', ]
df$EDUC <- ifelse(df$EDUC == '102', 'Less than high school', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '103', 'Less than high school', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '116', 'Less than high school', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '201', 'High school', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '202', 'High school', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '301', 'Some college', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '302', 'Some college', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '303', 'Some college', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '400', 'Bachelors', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '501', 'Graduate', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '502', 'Graduate', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '503', 'Graduate', df$EDUC)
df$EDUC <- ifelse(df$EDUC == '505', 'Graduate', df$EDUC)

df <- df[df$SCHOOLNOW != '7', ]
df <- df[df$SCHOOLNOW != '8', ]
df <- df[df$SCHOOLNOW != '9', ]
df$SCHOOLNOW <- ifelse(df$SCHOOLNOW == '0', FALSE, df$SCHOOLNOW)
df$SCHOOLNOW <- ifelse(df$SCHOOLNOW == '1', FALSE, df$SCHOOLNOW)
df$SCHOOLNOW <- ifelse(df$SCHOOLNOW == '2', TRUE, df$SCHOOLNOW)

df <- df[df$EMPSTAT != '999', ]
df$EMPSTAT <- ifelse(df$EMPSTAT == '000', FALSE, df$EMPSTAT)
df$EMPSTAT <- ifelse(df$EMPSTAT == '100', TRUE, df$EMPSTAT)
df$EMPSTAT <- ifelse(df$EMPSTAT == '200', FALSE, df$EMPSTAT)

df <- df[df$OCC != '98', ]
df <- df[df$OCC != '97', ]
df$OCC <- ifelse(df$OCC == '01', 'Management', df$OCC)
df$OCC <- ifelse(df$OCC == '02', 'Management', df$OCC)
df$OCC <- ifelse(df$OCC == '03', 'Management', df$OCC)
df$OCC <- ifelse(df$OCC == '04', 'Management', df$OCC)
df$OCC <- ifelse(df$OCC == '05', 'Business/Finance', df$OCC)
df$OCC <- ifelse(df$OCC == '06', 'Business/Finance', df$OCC)
df$OCC <- ifelse(df$OCC == '07', 'Computer/Math', df$OCC)
df$OCC <- ifelse(df$OCC == '08', 'Computer/Math', df$OCC)
df$OCC <- ifelse(df$OCC == '07', 'Computer/Math', df$OCC)
df$OCC <- ifelse(df$OCC == '09', 'Architecture/Engineering', df$OCC)
df$OCC <- ifelse(df$OCC == '10', 'Architecture/Engineering', df$OCC)
df$OCC <- ifelse(df$OCC == '11', 'Architecture/Engineering', df$OCC)
df$OCC <- ifelse(df$OCC == '12', 'Science', df$OCC)
df$OCC <- ifelse(df$OCC == '13', 'Science', df$OCC)
df$OCC <- ifelse(df$OCC == '14', 'Science', df$OCC)
df$OCC <- ifelse(df$OCC == '15', 'Science', df$OCC)
df$OCC <- ifelse(df$OCC == '16', 'Social Service', df$OCC)
df$OCC <- ifelse(df$OCC == '17', 'Social Service', df$OCC)
df$OCC <- ifelse(df$OCC == '18', 'Legal', df$OCC)
df$OCC <- ifelse(df$OCC == '19', 'Legal', df$OCC)
df$OCC <- ifelse(df$OCC == '20', 'Education', df$OCC)
df$OCC <- ifelse(df$OCC == '21', 'Education', df$OCC)
df$OCC <- ifelse(df$OCC == '22', 'Education', df$OCC)
df$OCC <- ifelse(df$OCC == '23', 'Education', df$OCC)
df$OCC <- ifelse(df$OCC == '24', 'Education', df$OCC)
df$OCC <- ifelse(df$OCC == '25', 'Art/Entertainment', df$OCC)
df$OCC <- ifelse(df$OCC == '26', 'Art/Entertainment', df$OCC)
df$OCC <- ifelse(df$OCC == '27', 'Art/Entertainment', df$OCC)
df$OCC <- ifelse(df$OCC == '28', 'Art/Entertainment', df$OCC)
df$OCC <- ifelse(df$OCC == '29', 'Healthcare Practitioners', df$OCC)
df$OCC <- ifelse(df$OCC == '30', 'Healthcare Practitioners', df$OCC)
df$OCC <- ifelse(df$OCC == '31', 'Healthcare Practitioners', df$OCC)
df$OCC <- ifelse(df$OCC == '32', 'Healthcare Support', df$OCC)
df$OCC <- ifelse(df$OCC == '33', 'Healthcare Support', df$OCC)
df$OCC <- ifelse(df$OCC == '34', 'Healthcare Support', df$OCC)
df$OCC <- ifelse(df$OCC == '35', 'Protective Services', df$OCC)
df$OCC <- ifelse(df$OCC == '36', 'Protective Services', df$OCC)
df$OCC <- ifelse(df$OCC == '37', 'Protective Services', df$OCC)
df$OCC <- ifelse(df$OCC == '38', 'Protective Services', df$OCC)
df$OCC <- ifelse(df$OCC == '39', 'Food', df$OCC)
df$OCC <- ifelse(df$OCC == '40', 'Food', df$OCC)
df$OCC <- ifelse(df$OCC == '41', 'Food', df$OCC)
df$OCC <- ifelse(df$OCC == '42', 'Food', df$OCC)
df$OCC <- ifelse(df$OCC == '43', 'Maintenance', df$OCC)
df$OCC <- ifelse(df$OCC == '44', 'Maintenance', df$OCC)
df$OCC <- ifelse(df$OCC == '45', 'Maintenance', df$OCC)
df$OCC <- ifelse(df$OCC == '46', 'Care', df$OCC)
df$OCC <- ifelse(df$OCC == '47', 'Care', df$OCC)
df$OCC <- ifelse(df$OCC == '48', 'Care', df$OCC)
df$OCC <- ifelse(df$OCC == '49', 'Care', df$OCC)
df$OCC <- ifelse(df$OCC == '50', 'Care', df$OCC)
df$OCC <- ifelse(df$OCC == '51', 'Care', df$OCC)
df$OCC <- ifelse(df$OCC == '52', 'Care', df$OCC)
df$OCC <- ifelse(df$OCC == '53', 'Sales', df$OCC)
df$OCC <- ifelse(df$OCC == '54', 'Sales', df$OCC)
df$OCC <- ifelse(df$OCC == '55', 'Sales', df$OCC)
df$OCC <- ifelse(df$OCC == '56', 'Sales', df$OCC)
df$OCC <- ifelse(df$OCC == '57', 'Sales', df$OCC)
df$OCC <- ifelse(df$OCC == '58', 'Admin', df$OCC)
df$OCC <- ifelse(df$OCC == '59', 'Admin', df$OCC)
df$OCC <- ifelse(df$OCC == '60', 'Admin', df$OCC)
df$OCC <- ifelse(df$OCC == '61', 'Admin', df$OCC)
df$OCC <- ifelse(df$OCC == '62', 'Admin', df$OCC)
df$OCC <- ifelse(df$OCC == '63', 'Admin', df$OCC)
df$OCC <- ifelse(df$OCC == '64', 'Admin', df$OCC)
df$OCC <- ifelse(df$OCC == '65', 'Agriculture', df$OCC)
df$OCC <- ifelse(df$OCC == '66', 'Agriculture', df$OCC)
df$OCC <- ifelse(df$OCC == '67', 'Agriculture', df$OCC)
df$OCC <- ifelse(df$OCC == '68', 'Agriculture', df$OCC)
df$OCC <- ifelse(df$OCC == '69', 'Construction', df$OCC)
df$OCC <- ifelse(df$OCC == '70', 'Construction', df$OCC)
df$OCC <- ifelse(df$OCC == '71', 'Construction', df$OCC)
df$OCC <- ifelse(df$OCC == '72', 'Construction', df$OCC)
df$OCC <- ifelse(df$OCC == '73', 'Construction', df$OCC)
df$OCC <- ifelse(df$OCC == '74', 'Repair', df$OCC)
df$OCC <- ifelse(df$OCC == '75', 'Repair', df$OCC)
df$OCC <- ifelse(df$OCC == '76', 'Repair', df$OCC)
df$OCC <- ifelse(df$OCC == '77', 'Repair', df$OCC)
df$OCC <- ifelse(df$OCC == '78', 'Production', df$OCC)
df$OCC <- ifelse(df$OCC == '79', 'Production', df$OCC)
df$OCC <- ifelse(df$OCC == '80', 'Production', df$OCC)
df$OCC <- ifelse(df$OCC == '81', 'Production', df$OCC)
df$OCC <- ifelse(df$OCC == '82', 'Production', df$OCC)
df$OCC <- ifelse(df$OCC == '83', 'Production', df$OCC)
df$OCC <- ifelse(df$OCC == '84', 'Production', df$OCC)
df$OCC <- ifelse(df$OCC == '85', 'Production', df$OCC)
df$OCC <- ifelse(df$OCC == '86', 'Production', df$OCC)
df$OCC <- ifelse(df$OCC == '87', 'Transport', df$OCC)
df$OCC <- ifelse(df$OCC == '88', 'Transport', df$OCC)
df$OCC <- ifelse(df$OCC == '89', 'Transport', df$OCC)
df$OCC <- ifelse(df$OCC == '90', 'Transport', df$OCC)
df$OCC <- ifelse(df$OCC == '91', 'Transport', df$OCC)
df$OCC <- ifelse(df$OCC == '92', 'Transport', df$OCC)
df$OCC <- ifelse(df$OCC == '93', 'Transport', df$OCC)
df$OCC <- ifelse(df$OCC == '94', 'Military', df$OCC)
df$OCC <- ifelse(df$OCC == '99', 'Other', df$OCC)

df <- df[df$HOURSWRK != '97', ]
df <- df[df$HOURSWRK != '98', ]
df <- df[df$HOURSWRK != '99', ]

df <- df[df$SUPERVISOR != '7', ]
df <- df[df$SUPERVISOR != '8', ]
df <- df[df$SUPERVISOR != '9', ]
df$SUPERVISOR <- ifelse(df$SUPERVISOR == '0', FALSE, df$SUPERVISOR)
df$SUPERVISOR <- ifelse(df$SUPERVISOR == '1', FALSE, df$SUPERVISOR)
df$SUPERVISOR <- ifelse(df$SUPERVISOR == '2', TRUE, df$SUPERVISOR)

df <- df[df$MISSWORK12M != '997', ]
df <- df[df$MISSWORK12M != '998', ]
df <- df[df$MISSWORK12M != '999', ]
df$MISSWORK12M <- ifelse(df$MISSWORK12M == '996', 0, df$MISSWORK12M)

df <- df[df$GOTSSISSDI != '7', ]
df <- df[df$GOTSSISSDI != '8', ]
df <- df[df$GOTSSISSDI != '9', ]
df$GOTSSISSDI <- ifelse(df$GOTSSISSDI == '0', FALSE, df$GOTSSISSDI)
df$GOTSSISSDI <- ifelse(df$GOTSSISSDI == '1', FALSE, df$GOTSSISSDI)
df$GOTSSISSDI <- ifelse(df$GOTSSISSDI == '2', TRUE, df$GOTSSISSDI)

df <- df[df$GOTSTAMPFAM != '70', ]
df <- df[df$GOTSTAMPFAM != '80', ]
df <- df[df$GOTSTAMPFAM != '90', ]
df$GOTSTAMPFAM <- ifelse(df$GOTSTAMPFAM == '10', FALSE, df$GOTSTAMPFAM)
df$GOTSTAMPFAM <- ifelse(df$GOTSTAMPFAM == '21', TRUE, df$GOTSTAMPFAM)

df <- df[df$FSSTATDET != '9', ]
df$FSSTATDET <- ifelse(df$FSSTATDET == '1', 'High', df$FSSTATDET)
df$FSSTATDET <- ifelse(df$FSSTATDET == '2', 'Marginal', df$FSSTATDET)
df$FSSTATDET <- ifelse(df$FSSTATDET == '1', 'Low', df$FSSTATDET)
df$FSSTATDET <- ifelse(df$FSSTATDET == '2', 'Very Low', df$FSSTATDET)

df <- df[df$OWNERSHIP != '97', ]
df <- df[df$OWNERSHIP != '98', ]
df <- df[df$OWNERSHIP != '99', ]
df$OWNERSHIP <- ifelse(df$OWNERSHIP == '10', 'Owned', df$OWNERSHIP)
df$OWNERSHIP <- ifelse(df$OWNERSHIP == '20', 'Rented', df$OWNERSHIP)
df$OWNERSHIP <- ifelse(df$OWNERSHIP == '30', 'Other', df$OWNERSHIP)

df <- df[df$LOWRENT != '7', ]
df <- df[df$LOWRENT != '8', ]
df <- df[df$LOWRENT != '9', ]
df$LOWRENT <- ifelse(df$LOWRENT == '0', FALSE, df$LOWRENT)
df$LOWRENT <- ifelse(df$LOWRENT == '1', FALSE, df$LOWRENT)
df$LOWRENT <- ifelse(df$LOWRENT == '2', TRUE, df$LOWRENT)

df <- df[df$HOUYRSLIV != '7', ]
df <- df[df$HOUYRSLIV != '8', ]
df <- df[df$HOUYRSLIV != '9', ]
df$HOUYRSLIV <- ifelse(df$HOUYRSLIV == '0', 'Less than 1', df$HOUYRSLIV)
df$HOUYRSLIV <- ifelse(df$HOUYRSLIV == '1', 'Less than 1', df$HOUYRSLIV)
df$HOUYRSLIV <- ifelse(df$HOUYRSLIV == '2', '1 to 3', df$HOUYRSLIV)
df$HOUYRSLIV <- ifelse(df$HOUYRSLIV == '3', '4 to 10', df$HOUYRSLIV)
df$HOUYRSLIV <- ifelse(df$HOUYRSLIV == '4', '11 to 20', df$HOUYRSLIV)
df$HOUYRSLIV <- ifelse(df$HOUYRSLIV == '5', '11 to 20', df$HOUYRSLIV)

df <- df[df$HEALTH != '7', ]
df <- df[df$HEALTH != '8', ]
df <- df[df$HEALTH != '9', ]
df$HEALTH <- ifelse(df$HEALTH == '1', 'Excellent', df$HEALTH)
df$HEALTH <- ifelse(df$HEALTH == '2', 'Very Good', df$HEALTH)
df$HEALTH <- ifelse(df$HEALTH == '3', 'Good', df$HEALTH)
df$HEALTH <- ifelse(df$HEALTH == '4', 'Fair', df$HEALTH)
df$HEALTH <- ifelse(df$HEALTH == '5', 'Poor', df$HEALTH)

df <- df[df$HEIGHT != '97', ]
df <- df[df$HEIGHT != '98', ]
df <- df[df$HEIGHT != '99', ]
df$HEIGHT <- ifelse(df$HEIGHT == '96', 77, df$HEIGHT)
df$HEIGHT <- ifelse(df$HEIGHT == '0', 67, df$HEIGHT)

df <- df[df$WEIGHT != '997', ]
df <- df[df$WEIGHT != '998', ]
df <- df[df$WEIGHT != '999', ]
df$WEIGHT <- ifelse(df$WEIGHT == '996', 185, df$WEIGHT)
df$WEIGHT <- ifelse(df$WEIGHT == '0', 185, df$WEIGHT)

df <- df[df$BMICALC != '997', ]
df <- df[df$BMICALC != '998', ]
df <- df[df$BMICALC != '999', ]
df$BMICALC <- ifelse(df$BMICALC == '996', 26.5, df$BMICALC)
df$BMICALC <- ifelse(df$BMICALC == '0', 26.5, df$BMICALC)

df <- df[df$WLDAYR != '997', ]
df <- df[df$WLDAYR != '998', ]
df <- df[df$WLDAYR != '999', ]
df$WLDAYR <- ifelse(df$WLDAYR == '996', 0, df$WLDAYR)

df <- df[df$PREGNANTNOW != '7', ]
df <- df[df$PREGNANTNOW != '8', ]
df <- df[df$PREGNANTNOW != '9', ]
df$PREGNANTNOW <- ifelse(df$PREGNANTNOW == '0', FALSE, df$PREGNANTNOW)
df$PREGNANTNOW <- ifelse(df$PREGNANTNOW == '1', FALSE, df$PREGNANTNOW)
df$PREGNANTNOW <- ifelse(df$PREGNANTNOW == '2', TRUE, df$PREGNANTNOW)

df <- df[df$DVINT != '997', ]
df <- df[df$DVINT != '998', ]
df <- df[df$DVINT != '999', ]
df$DVINT <- ifelse(df$DVINT == '100', 'Never', df$DVINT)
df$DVINT <- ifelse(df$DVINT == '200', 'Less than 1', df$DVINT)
df$DVINT <- ifelse(df$DVINT == '302', '1 to 2', df$DVINT)
df$DVINT <- ifelse(df$DVINT == '304', '2 to 3', df$DVINT)
df$DVINT <- ifelse(df$DVINT == '309', '3 to 5', df$DVINT)
df$DVINT <- ifelse(df$DVINT == '401', '5 to 9', df$DVINT)
df$DVINT <- ifelse(df$DVINT == '402', 'More than 10', df$DVINT)

df <- df[df$URGCAREYRNO != '7', ]
df <- df[df$URGCAREYRNO != '8', ]
df <- df[df$URGCAREYRNO != '9', ]

df <- df[df$HOSPNGHT != '7', ]
df <- df[df$HOSPNGHT != '8', ]
df <- df[df$HOSPNGHT != '9', ]
df$HOSPNGHT <- ifelse(df$HOSPNGHT == '0', FALSE, df$HOSPNGHT)
df$HOSPNGHT <- ifelse(df$HOSPNGHT == '1', FALSE, df$HOSPNGHT)
df$HOSPNGHT <- ifelse(df$HOSPNGHT == '2', TRUE, df$HOSPNGHT)

df <- df[df$ERYRNO != '97', ]
df <- df[df$ERYRNO != '98', ]
df <- df[df$ERYRNO != '99', ]
df$ERYRNO <- ifelse(df$ERYRNO == '10', 0, df$ERYRNO)
df$ERYRNO <- ifelse(df$ERYRNO == '20', 1, df$ERYRNO)
df$ERYRNO <- ifelse(df$ERYRNO == '31', 2, df$ERYRNO)
df$ERYRNO <- ifelse(df$ERYRNO == '32', 3, df$ERYRNO)
df$ERYRNO <- ifelse(df$ERYRNO == '40', 4, df$ERYRNO)

df <- df[df$USUALPL != '7', ]
df <- df[df$USUALPL != '8', ]
df <- df[df$USUALPL != '9', ]
df$USUALPL <- ifelse(df$USUALPL == '1', FALSE, df$USUALPL)
df$USUALPL <- ifelse(df$USUALPL == '2', TRUE, df$USUALPL)
df$USUALPL <- ifelse(df$USUALPL == '3', TRUE, df$USUALPL)

df <- df[df$DELAYCOST != '7', ]
df <- df[df$DELAYCOST != '8', ]
df <- df[df$DELAYCOST != '9', ]
df$DELAYCOST <- ifelse(df$DELAYCOST == '1', FALSE, df$DELAYCOST)
df$DELAYCOST <- ifelse(df$DELAYCOST == '2', TRUE, df$DELAYCOST)

df <- df[df$HINOTCOVE != '9', ]
df$HINOTCOVE <- ifelse(df$HINOTCOVE == '1', FALSE, df$HINOTCOVE)
df$HINOTCOVE <- ifelse(df$HINOTCOVE == '2', TRUE, df$HINOTCOVE)

df <- df[df$VACFLU12M != '7', ]
df <- df[df$VACFLU12M != '8', ]
df <- df[df$VACFLU12M != '9', ]
df$VACFLU12M <- ifelse(df$VACFLU12M == '1', FALSE, df$VACFLU12M)
df$VACFLU12M <- ifelse(df$VACFLU12M == '2', TRUE, df$VACFLU12M)

df <- df[df$ADDEV != '7', ]
df <- df[df$ADDEV != '8', ]
df <- df[df$ADDEV != '9', ]
df$ADDEV <- ifelse(df$ADDEV == '0', FALSE, df$ADDEV)
df$ADDEV <- ifelse(df$ADDEV == '1', FALSE, df$ADDEV)
df$ADDEV <- ifelse(df$ADDEV == '2', TRUE, df$ADDEV)

df <- df[df$ANGIPECEV != '7', ]
df <- df[df$ANGIPECEV != '8', ]
df <- df[df$ANGIPECEV != '9', ]
df$ANGIPECEV <- ifelse(df$ANGIPECEV == '0', FALSE, df$ANGIPECEV)
df$ANGIPECEV <- ifelse(df$ANGIPECEV == '1', FALSE, df$ANGIPECEV)
df$ANGIPECEV <- ifelse(df$ANGIPECEV == '2', TRUE, df$ANGIPECEV)

df <- df[df$ARTHGLUPEV != '7', ]
df <- df[df$ARTHGLUPEV != '8', ]
df <- df[df$ARTHGLUPEV != '9', ]
df$ARTHGLUPEV <- ifelse(df$ARTHGLUPEV == '0', FALSE, df$ARTHGLUPEV)
df$ARTHGLUPEV <- ifelse(df$ARTHGLUPEV == '1', FALSE, df$ARTHGLUPEV)
df$ARTHGLUPEV <- ifelse(df$ARTHGLUPEV == '2', TRUE, df$ARTHGLUPEV)

df <- df[df$ASTHMAEV != '7', ]
df <- df[df$ASTHMAEV != '8', ]
df <- df[df$ASTHMAEV != '9', ]
df$ASTHMAEV <- ifelse(df$ASTHMAEV == '0', FALSE, df$ASTHMAEV)
df$ASTHMAEV <- ifelse(df$ASTHMAEV == '1', FALSE, df$ASTHMAEV)
df$ASTHMAEV <- ifelse(df$ASTHMAEV == '2', TRUE, df$ASTHMAEV)

df <- df[df$AUTISMEV != '7', ]
df <- df[df$AUTISMEV != '8', ]
df <- df[df$AUTISMEV != '9', ]
df$AUTISMEV <- ifelse(df$AUTISMEV == '0', FALSE, df$AUTISMEV)
df$AUTISMEV <- ifelse(df$AUTISMEV == '1', FALSE, df$AUTISMEV)
df$AUTISMEV <- ifelse(df$AUTISMEV == '2', TRUE, df$AUTISMEV)

df <- df[df$CANCEREV != '7', ]
df <- df[df$CANCEREV != '8', ]
df <- df[df$CANCEREV != '9', ]
df$CANCEREV <- ifelse(df$CANCEREV == '0', FALSE, df$CANCEREV)
df$CANCEREV <- ifelse(df$CANCEREV == '1', FALSE, df$CANCEREV)
df$CANCEREV <- ifelse(df$CANCEREV == '2', TRUE, df$CANCEREV)

df <- df[df$CHEARTDIEV != '7', ]
df <- df[df$CHEARTDIEV != '8', ]
df <- df[df$CHEARTDIEV != '9', ]
df$CHEARTDIEV <- ifelse(df$CHEARTDIEV == '0', FALSE, df$CHEARTDIEV)
df$CHEARTDIEV <- ifelse(df$CHEARTDIEV == '1', FALSE, df$CHEARTDIEV)
df$CHEARTDIEV <- ifelse(df$CHEARTDIEV == '2', TRUE, df$CHEARTDIEV)

df <- df[df$CHOLHIGHEV != '7', ]
df <- df[df$CHOLHIGHEV != '8', ]
df <- df[df$CHOLHIGHEV != '9', ]
df$CHOLHIGHEV <- ifelse(df$CHOLHIGHEV == '0', FALSE, df$CHOLHIGHEV)
df$CHOLHIGHEV <- ifelse(df$CHOLHIGHEV == '1', FALSE, df$CHOLHIGHEV)
df$CHOLHIGHEV <- ifelse(df$CHOLHIGHEV == '2', TRUE, df$CHOLHIGHEV)

df <- df[df$DEMENTIAEV != '7', ]
df <- df[df$DEMENTIAEV != '8', ]
df <- df[df$DEMENTIAEV != '9', ]
df$DEMENTIAEV <- ifelse(df$DEMENTIAEV == '0', FALSE, df$DEMENTIAEV)
df$DEMENTIAEV <- ifelse(df$DEMENTIAEV == '1', FALSE, df$DEMENTIAEV)
df$DEMENTIAEV <- ifelse(df$DEMENTIAEV == '2', TRUE, df$DEMENTIAEV)

df <- df[df$DEPRESSEV != '7', ]
df <- df[df$DEPRESSEV != '8', ]
df <- df[df$DEPRESSEV != '9', ]
df$DEPRESSEV <- ifelse(df$DEPRESSEV == '0', FALSE, df$DEPRESSEV)
df$DEPRESSEV <- ifelse(df$DEPRESSEV == '1', FALSE, df$DEPRESSEV)
df$DEPRESSEV <- ifelse(df$DEPRESSEV == '2', TRUE, df$DEPRESSEV)

df <- df[df$DEPRESSEV != '7', ]
df <- df[df$DEPRESSEV != '8', ]
df <- df[df$DEPRESSEV != '9', ]
df$DEPRESSEV <- ifelse(df$DEPRESSEV == '0', FALSE, df$DEPRESSEV)
df$DEPRESSEV <- ifelse(df$DEPRESSEV == '1', FALSE, df$DEPRESSEV)
df$DEPRESSEV <- ifelse(df$DEPRESSEV == '2', TRUE, df$DEPRESSEV)

df <- df[df$DIABETICEV != '7', ]
df <- df[df$DIABETICEV != '8', ]
df <- df[df$DIABETICEV != '9', ]
df$DIABETICEV <- ifelse(df$DIABETICEV == '0', FALSE, df$DIABETICEV)
df$DIABETICEV <- ifelse(df$DIABETICEV == '1', FALSE, df$DIABETICEV)
df$DIABETICEV <- ifelse(df$DIABETICEV == '2', TRUE, df$DIABETICEV)

df <- df[df$HEARTATTEV != '7', ]
df <- df[df$HEARTATTEV != '8', ]
df <- df[df$HEARTATTEV != '9', ]
df$HEARTATTEV <- ifelse(df$HEARTATTEV == '0', FALSE, df$HEARTATTEV)
df$HEARTATTEV <- ifelse(df$HEARTATTEV == '1', FALSE, df$HEARTATTEV)
df$HEARTATTEV <- ifelse(df$HEARTATTEV == '2', TRUE, df$HEARTATTEV)

df <- df[df$HEPATEV != '7', ]
df <- df[df$HEPATEV != '8', ]
df <- df[df$HEPATEV != '9', ]
df$HEPATEV <- ifelse(df$HEPATEV == '0', FALSE, df$HEPATEV)
df$HEPATEV <- ifelse(df$HEPATEV == '1', FALSE, df$HEPATEV)
df$HEPATEV <- ifelse(df$HEPATEV == '2', TRUE, df$HEPATEV)

df <- df[df$HYPERTENEV != '7', ]
df <- df[df$HYPERTENEV != '8', ]
df <- df[df$HYPERTENEV != '9', ]
df$HYPERTENEV <- ifelse(df$HYPERTENEV == '0', FALSE, df$HYPERTENEV)
df$HYPERTENEV <- ifelse(df$HYPERTENEV == '1', FALSE, df$HYPERTENEV)
df$HYPERTENEV <- ifelse(df$HYPERTENEV == '2', TRUE, df$HYPERTENEV)

df <- df[df$LEARNDEV != '7', ]
df <- df[df$LEARNDEV != '8', ]
df <- df[df$LEARNDEV != '9', ]
df$LEARNDEV <- ifelse(df$LEARNDEV == '0', FALSE, df$LEARNDEV)
df$LEARNDEV <- ifelse(df$LEARNDEV == '1', FALSE, df$LEARNDEV)
df$LEARNDEV <- ifelse(df$LEARNDEV == '2', TRUE, df$LEARNDEV)

df <- df[df$LIVERCHRON != '7', ]
df <- df[df$LIVERCHRON != '8', ]
df <- df[df$LIVERCHRON != '9', ]
df$LIVERCHRON <- ifelse(df$LIVERCHRON == '0', FALSE, df$LIVERCHRON)
df$LIVERCHRON <- ifelse(df$LIVERCHRON == '1', FALSE, df$LIVERCHRON)
df$LIVERCHRON <- ifelse(df$LIVERCHRON == '2', TRUE, df$LIVERCHRON)

df <- df[df$ODDEV != '7', ]
df <- df[df$ODDEV != '8', ]
df <- df[df$ODDEV != '9', ]
df$ODDEV <- ifelse(df$ODDEV == '0', FALSE, df$ODDEV)
df$ODDEV <- ifelse(df$ODDEV == '1', FALSE, df$ODDEV)
df$ODDEV <- ifelse(df$ODDEV == '2', TRUE, df$ODDEV)

df <- df[df$RETEV != '7', ]
df <- df[df$RETEV != '8', ]
df <- df[df$RETEV != '9', ]
df$RETEV <- ifelse(df$RETEV == '0', FALSE, df$RETEV)
df$RETEV <- ifelse(df$RETEV == '1', FALSE, df$RETEV)
df$RETEV <- ifelse(df$RETEV == '2', TRUE, df$RETEV)

df <- df[df$STROKEV != '7', ]
df <- df[df$STROKEV != '8', ]
df <- df[df$STROKEV != '9', ]
df$STROKEV <- ifelse(df$STROKEV == '0', FALSE, df$STROKEV)
df$STROKEV <- ifelse(df$STROKEV == '1', FALSE, df$STROKEV)
df$STROKEV <- ifelse(df$STROKEV == '2', TRUE, df$STROKEV)

df <- df[df$COPDEV != '7', ]
df <- df[df$COPDEV != '8', ]
df <- df[df$COPDEV != '9', ]
df$COPDEV <- ifelse(df$COPDEV == '0', FALSE, df$COPDEV)
df$COPDEV <- ifelse(df$COPDEV == '1', FALSE, df$COPDEV)
df$COPDEV <- ifelse(df$COPDEV == '2', TRUE, df$COPDEV)

df <- df[df$INJANY != '7', ]
df <- df[df$INJANY != '8', ]
df <- df[df$INJANY != '9', ]
df$INJANY <- ifelse(df$INJANY == '1', FALSE, df$INJANY)
df$INJANY <- ifelse(df$INJANY == '2', TRUE, df$INJANY)

df <- df[df$SMOKEV != '7', ]
df <- df[df$SMOKEV != '8', ]
df <- df[df$SMOKEV != '9', ]
df$SMOKEV <- ifelse(df$SMOKEV == '0', FALSE, df$SMOKEV)
df$SMOKEV <- ifelse(df$SMOKEV == '1', FALSE, df$SMOKEV)
df$SMOKEV <- ifelse(df$SMOKEV == '2', TRUE, df$SMOKEV)

df <- df[df$ANXIETYEV != '7', ]
df <- df[df$ANXIETYEV != '8', ]
df <- df[df$ANXIETYEV != '9', ]
df$ANXIETYEV <- ifelse(df$ANXIETYEV == '0', FALSE, df$ANXIETYEV)
df$ANXIETYEV <- ifelse(df$ANXIETYEV == '1', FALSE, df$ANXIETYEV)
df$ANXIETYEV <- ifelse(df$ANXIETYEV == '2', TRUE, df$ANXIETYEV)

df <- df[df$EMOSUPPORT != '7', ]
df <- df[df$EMOSUPPORT != '8', ]
df <- df[df$EMOSUPPORT != '9', ]
df$EMOSUPPORT <- ifelse(df$EMOSUPPORT == '0', 'Always', df$EMOSUPPORT)
df$EMOSUPPORT <- ifelse(df$EMOSUPPORT == '1', 'Always', df$EMOSUPPORT)
df$EMOSUPPORT <- ifelse(df$EMOSUPPORT == '2', 'Usually', df$EMOSUPPORT)
df$EMOSUPPORT <- ifelse(df$EMOSUPPORT == '3', 'Sometimes', df$EMOSUPPORT)
df$EMOSUPPORT <- ifelse(df$EMOSUPPORT == '4', 'Rarely', df$EMOSUPPORT)
df$EMOSUPPORT <- ifelse(df$EMOSUPPORT == '5', 'Never', df$EMOSUPPORT)

df <- df[df$DEPFREQ != '7', ]
df <- df[df$DEPFREQ != '8', ]
df <- df[df$DEPFREQ != '9', ]
df$DEPFREQ <- ifelse(df$DEPFREQ == '0', 'Never', df$DEPFREQ)
df$DEPFREQ <- ifelse(df$DEPFREQ == '1', 'Daily', df$DEPFREQ)
df$DEPFREQ <- ifelse(df$DEPFREQ == '2', 'Weekly', df$DEPFREQ)
df$DEPFREQ <- ifelse(df$DEPFREQ == '3', 'Monthly', df$DEPFREQ)
df$DEPFREQ <- ifelse(df$DEPFREQ == '4', 'Few times.a year', df$DEPFREQ)
df$DEPFREQ <- ifelse(df$DEPFREQ == '5', 'Never', df$DEPFREQ)

df <- df[df$CVDDIAG != '7', ]
df <- df[df$CVDDIAG != '8', ]
df <- df[df$CVDDIAG != '9', ]
df$CVDDIAG <- ifelse(df$CVDDIAG == '0', FALSE, df$CVDDIAG)
df$CVDDIAG <- ifelse(df$CVDDIAG == '1', FALSE, df$CVDDIAG)
df$CVDDIAG <- ifelse(df$CVDDIAG == '2', TRUE, df$CVDDIAG)

write.csv(df, file = "/Users/venkateshanandaram/Downloads/nhis_data.csv", row.names = FALSE)