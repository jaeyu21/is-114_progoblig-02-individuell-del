include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include data-source
include gdrive-sheets
include data-source
include tables
include image

 
my-sheet = load-spreadsheet("1zw092l5_wwVADqV97T1Jy1lJo4vW0wxH7aUxK5fIwGc")

event-data = load-table: komponent, energi
  source: my-sheet.sheet-by-name("kWh", true)
  sanitize komponent using string-sanitizer
  sanitize energi using string-sanitizer
end   
event-data


fun bilVerdi(x, y, z): 
  (x * y) * z  
end


fun string-converter(s):
  cases(Option) string-to-number(s):
    | some(a) => 
      if a == "":
        bilVerdi(8, 0.8, 7)
      else:
        a
      end
    | none => 44.8
      
  end
where:
  string-converter("") is 0
  string-converter("30") is 30
  string-converter("37") is 37
  string-converter("5") is 5
  string-converter("4") is 4
  string-converter("15") is 15
  string-converter("48") is 48
  string-converter("12") is 12
  string-converter("4") is 4
end

new-event-data = transform-column(event-data, "energi", string-converter)

new-event-data

sumResultat = sum(new-event-data, "energi")
sumResultat

showHistogram = bar-chart(new-event-data,"komponent","energi")

showHistogram

