<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <link rel="stylesheet" type="text/css" href="skyrim.css"/>
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>The Oblivion Crisis</title>
                <link rel="stylesheet" type="text/css" href="skyrim.css"/>
            </head>
        </html>
        <body>
            <xsl:apply-templates/>
        </body>
    </xsl:template>
    
    <xsl:template match="cast">
        <h2>Characters</h2>
        <ul>
            <xsl:apply-templates select="character"/>
        </ul>
        <h1>The Story</h1>
    </xsl:template>
    <xsl:template match="cast/character">
        <li>
            <xsl:apply-templates select="@id"/>
        </li>
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:apply-templates/>
    </xsl:template>
    
    <xsl:template match="paragraph">
        <p><xsl:apply-templates/></p>
    </xsl:template>
    
    <xsl:template match="//location">
        <emph rend="bold"><xsl:apply-templates/></emph>
    </xsl:template>
    
    <xsl:template match="//epithet">
        <emph rend="underlined"><xsl:apply-templates/></emph>
    </xsl:template>
    
    <xsl:template match="paragraph//character">
        <span class="character"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="faction[@ref='MythicDawn']">
            <faction class="MythicDawn"><xsl:apply-templates/></faction>
    </xsl:template>
    <xsl:template match="faction[@ref='blades']">
        <faction class="blades"><xsl:apply-templates/></faction>
    </xsl:template>
    <xsl:template match="faction[@ref='daedra']">
        <faction class="daedra"><xsl:apply-templates/></faction>
    </xsl:template>
    <xsl:template match="faction[@ref='DarkBrotherhood']">
        <faction class="DarkBrotherhood"><xsl:apply-templates/></faction>
    </xsl:template>
    <xsl:template match="faction[@ref='empire']">
        <faction class="empire"><xsl:apply-templates/></faction>
    </xsl:template>
    
    <xsl:template match="QuestEvent">
        <span class="QuestEvent"><xsl:apply-templates/></span>
    </xsl:template>
    <xsl:template match="QuestItem">
        <span class="QuestItem"><xsl:apply-templates/></span>
    </xsl:template>
</xsl:stylesheet>