xquery version "3.1";
declare variable $ThisFileContent := string-join(
let $KingdomHearts := doc('/db/kingdomofhearts/Kingdom_hearts_2.5_script.xml/')
let $speeches := $KingdomHearts//sp/text() ! normalize-space()
return $speeches ! string(), "&#10;");


let $filename := "Python_KH2.5_Homework1.txt"
let $doc-db-uri := xmldb:store("/db/ajm7408/", $filename, $ThisFileContent, "text/plain")
return $doc-db-uri
(: View this text file at http://newtfire.org:8338/exist/rest/db/ajm7408/Python_KH2.5_Homework1.txt :)