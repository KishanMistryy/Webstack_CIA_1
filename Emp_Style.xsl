<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>
<xsl:template match="/">
	<html>
		<head>
			<title>“Employee Management System</title>
		<style>
            body
            {
                background: linear-gradient(grey, Yellow, Green)fixed;
            }            
        </style>
		</head>
		<body>
		 
			<table border="1" height="50%" wigth="80%" >
				  
					<tr bgcolor="lightgreen" >
						<td colspan="8"><p style="font-size:50px;margin-left: 25%;">Employee Management System</p></td>
					</tr>
				  
					<tr>
						<td width="5%">ID</td>
						<td width="15%">NAME</td>
						<td width="5%">AGE</td>
						<td width="15%">SALARY</td>
						<td width="15%">EMAIL</td>
						<td width="15%">MobNum</td>			
						<td width="15%">Designation</td>
						<td width="15%">Promotion</td>															
					</tr>
				 
					<xsl:for-each select="Company/Employee">
					<tr>
						<td width="5%"><xsl:value-of select="@id" /></td>
						<td width="15%"><xsl:value-of select="Emp_Name"/></td>
						<td width="5%"><xsl:value-of select="Emp_Age"/></td>
						<td width="15%"><xsl:value-of select="Emp_Salary"/></td>
						<td width="15%"><xsl:value-of select="Emp_Email"/></td>
						<td width="15%"><xsl:value-of select="Emp_Phone_Number"/></td>
						<td width="15%"><xsl:value-of select="Emp_Designation"/></td>
						
							<xsl:choose>
 								<xsl:when test="Emp_Age>=50">
  								<td>	
								  	<xsl:text>Associate Project Manager</xsl:text>
								</td>
 								</xsl:when>
								<xsl:when test="Emp_Age>=40">
  								<td>	
								  	<xsl:text>Team Leader</xsl:text>
								</td>
 								</xsl:when>
								<xsl:otherwise>
         						<td>
								 	<xsl:text>Developer </xsl:text></td>
      							</xsl:otherwise>						 
							</xsl:choose>
					</tr>
					</xsl:for-each>
			</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>

