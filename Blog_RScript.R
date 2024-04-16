library(tidyverse)
library(tidytext)
library(RColorBrewer)
library(wordcloud)
library(rvest)
library(igraph)
library(ggraph)

# 1.A Teacher in China Learns the Limits of Free Expression
ph1 <- read_html("https://www.newyorker.com/magazine/2022/05/16/a-teacher-in-china-learns-the-limits-of-free-expression")

ph1_text <- ph1 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "1") %>% 
  mutate( country = "China") %>% 
  mutate( title = "A Teacher in China Learns the Limits of Free Expression")


# 2.China's Reform Generation Adapts to Life in the Middle Class
ph2 <- read_html("https://www.newyorker.com/magazine/2022/01/03/chinas-reform-generation-adapts-to-life-in-the-middle-class")

ph2_text <- ph2 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "2") %>% 
  mutate( country = "China") %>% 
  mutate( title = "China's Reform Generation Adapts to Life in the Middle Class")

# 3. Learning to Ski in a Country of Beginners
ph3 <- read_html("https://www.newyorker.com/magazine/2021/06/21/learning-to-ski-in-a-country-of-beginners")

ph3_text <- ph3 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "3") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Learning to Ski in a Country of Beginners")

ph3_text

# 4. The Rise of Made-in-China Diplomacy
ph4 <- read_html("https://www.newyorker.com/magazine/2021/03/15/the-rise-of-made-in-china-diplomacy")

ph4_text <- ph4 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "4") %>% 
  mutate( country = "China") %>% 
  mutate( title = "The Rise of Made-in-China Diplomacy")

ph4_text

# 5. Nine Days in Wuhan, the Ground Zero of the Coronavirus Pandemic
ph5 <- read_html("https://www.newyorker.com/magazine/2020/10/12/nine-days-in-wuhan-the-ground-zero-of-the-coronavirus-pandemic")

ph5_text <- ph5 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "5") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Nine Days in Wuhan, the Ground Zero of the Coronavirus Pandemic")

ph5_text

# 6. Chinese Citizens Are Already Receiving a Coronavirus Vaccine
ph6 <- read_html("https://www.newyorker.com/news/news-desk/the-november-surprise-of-chinas-coronavirus-vaccine")

ph6_text <- ph6 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "6") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Chinese Citizens Are Already Receiving a Coronavirus Vaccine")

ph6_text

# 7. How China Controlled the Coronavirus
ph7 <- read_html("https://www.newyorker.com/magazine/2020/08/17/how-china-controlled-the-coronavirus")

ph7_text <- ph7 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "7") %>% 
  mutate( country = "China") %>% 
  mutate( title = "How China Controlled the Coronavirus")

ph7_text

# 8. Life on Lockdown in China
ph8 <- read_html("https://www.newyorker.com/magazine/2020/03/30/life-on-lockdown-in-china")

ph8_text <- ph8 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "8") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Life on Lockdown in China")

ph8_text

# 9. The Peace Corps Breaks Ties with China
ph9 <- read_html("https://www.newyorker.com/magazine/2020/03/16/the-peace-corps-breaks-ties-with-china")

ph9_text <- ph9 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "9") %>% 
  mutate( country = "China") %>% 
  mutate( title = "The Peace Corps Breaks Ties with China")

ph9_text

# 10. China's L.B.J. Cliffhanger!
ph10 <- read_html("https://www.newyorker.com/magazine/2020/02/10/chinas-lbj-cliffhanger")

ph10_text <- ph10 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "10") %>% 
  mutate( country = "China") %>% 
  mutate( title = "China's L.B.J. Cliffhanger!")

ph10_text

# 11. Mohamed Morsi, Who Brought the Muslim Brotherhood to the Egyptian Presidency
ph11 <- read_html("https://www.newyorker.com/news/news-desk/mohamed-morsi-who-brought-the-muslim-brotherhood-to-the-egyptian-presidency")

ph11_text <- ph11 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "11") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Mohamed Morsi")

ph11_text

#12. My House in Cairo
ph12 <- read_html("https://www.newyorker.com/culture/personal-history/my-house-in-cairo")

ph12_text <- ph12 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "12") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "My House in Cairo")

ph12_text

# 13. The Refugee and the Thief
ph13 <- read_html("https://www.newyorker.com/magazine/2019/04/01/egyptian-refugee")

ph13_text <- ph13 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "13") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "The Refugee and the Thief")

ph13_text

# 14. Cairo: A Type of Love Story
ph14 <- read_html("https://www.newyorker.com/magazine/2018/05/07/cairo-a-type-of-love-story")

ph14_text <- ph14 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "14") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Cairo: A Type of Love Story")

ph14_text

# 15. How Trump Is Transforming Rural America
ph15 <- read_html("https://www.newyorker.com/magazine/2017/07/24/how-trump-is-transforming-rural-america")

ph15_text <- ph15 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "15") %>% 
  mutate( country = "U.S.") %>% 
  mutate( title = "How Trump Is Transforming Rural America")

ph15_text

# 16. Learning Arabic from Egypt's Revolution 
ph16 <- read_html("https://www.newyorker.com/magazine/2017/04/17/learning-arabic-from-egypts-revolution")

ph16_text <- ph16 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "16") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Learning Arabic from Egypt's Revolution")

ph16_text

# 17. Egypt's Failed Revolution
ph17 <- read_html("https://www.newyorker.com/magazine/2017/01/02/egypts-failed-revolution")

ph17_text <- ph17 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "17") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Egypt's Failed Revolution")

ph17_text

# 18. Making Peace with Trump's Revolutionaries
ph18 <- read_html("https://www.newyorker.com/news/news-desk/making-peace-with-trumps-revolutionaries")

ph18_text <- ph18 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "18") %>% 
  mutate( country = "U.S.") %>% 
  mutate( title = "Making Peace with Trump's Revolutionaries")

ph18_text

# 19. Living-Room Democracy
ph19 <- read_html("https://www.newyorker.com/magazine/2016/03/07/egypts-singular-stay-at-home-campaigns")

ph19_text <- ph19 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "19") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Living-Room Democracy")

ph19_text

# 20. Invisible Bridges: Life Along the Chinese-Russian Border
ph20 <- read_html("https://www.newyorker.com/culture/photo-booth/invisible-bridges-life-along-the-chinese-russian-border")

ph20_text <- ph20 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "20") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Invisible Bridges: Life Along the Chinese-Russian Border")

ph20_text

# 21. Ryan Hall, America's Fastest Marathoner, Slows Down
ph21 <- read_html("https://www.newyorker.com/sports/sporting-scene/ryan-hall-americas-fastest-marathoner-slows-down")

ph21_text <- ph21 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "21") %>% 
  mutate( country = "U.S.") %>% 
  mutate( title = "Ryan Hall, America's Fastest Marathoner, Slows Down")

ph21_text

# 22. A Rainy Anniversary in Tahrir Square
ph22 <- read_html("https://www.newyorker.com/news/daily-comment/a-rainy-anniversary-in-tahrir-square")

ph22_text <- ph22 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "22") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "A Rainy Anniversary in Tahrir Square")

ph22_text

# 23. The Many Lives Along the Yangtze River
ph23 <- read_html("https://www.newyorker.com/culture/photo-booth/the-many-lives-along-the-yangtze-river")

ph23_text <- ph23 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "23") %>% 
  mutate( country = "China") %>% 
  mutate( title = "The Many Lives Along the Yangtze River")

ph23_text

# 24. Learning to Speak Lingerie
ph24 <- read_html("https://www.newyorker.com/magazine/2015/08/10/learning-to-speak-lingerie")

ph24_text <- ph24 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "24") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Learning to Speak Lingerie")

ph24_text

# Travels with My Censor
ph25 <- read_html("https://www.newyorker.com/magazine/2015/03/09/travels-with-my-censor")

ph25_text <- ph25 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "25") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Travels with My Censor")

ph25_text

# 26. Tales of the Trash
ph26 <- read_html("https://www.newyorker.com/magazine/2014/10/13/tales-trash")

ph26_text <- ph26 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "26") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Tales of the Trash")

ph26_text

# 27. Fathers And Sons
ph27 <- read_html("https://www.newyorker.com/magazine/2014/06/09/election-day-4")

ph27_text <- ph27 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "27") %>% 
  mutate( country = "Uncategorized") %>% 
  mutate( title = "Fathers And Sons")

ph27_text

# 28. Revolution on Trial
ph28 <- read_html("https://www.newyorker.com/magazine/2014/03/10/revolution-on-trial")

ph28_text <- ph28 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "28") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Revolution on Trial")

ph28_text

# 29. If Everyone Votes Yes, Is It Democracy?
ph29 <- read_html("https://www.newyorker.com/news/news-desk/if-everyone-votes-yes-is-it-democracy")

ph29_text <- ph29 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "29") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "If Everyone Votes Yes, Is It Democracy?")

ph29_text

# 30. The Buried
ph30 <- read_html("https://www.newyorker.com/magazine/2013/11/18/the-buried")

ph30_text <- ph30 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "30") %>%
  mutate( country = "Egypt") %>% 
  mutate( title = "The Buried")

ph30_text

# 31. Morsi's Chaotic Day in Court
ph31 <- read_html("https://www.newyorker.com/news/news-desk/morsis-chaotic-day-in-court")

ph31_text <- ph31 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "31") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Morsi's Chaotic Day in Court")

ph31_text

# 32. Keeping the Faith
ph32 <- read_html("https://www.newyorker.com/magazine/2013/10/07/keeping-the-faith-2")

ph32_text <- ph32 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "32") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Keeping the Faith")

ph32_text

# 33. Egypt Crosses the Line
ph33 <- read_html("https://www.newyorker.com/news/daily-comment/egypt-crosses-the-line")

ph33_text <- ph33 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "33") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Egypt Crosses the Line")

ph33_text

# 34. The Showdown
ph34 <- read_html("https://www.newyorker.com/magazine/2013/07/22/the-showdown-2")

ph34_text <- ph34 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "34") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "The Showdown")

ph34_text

# 35. Morsi in Bazinga
ph35 <- read_html("https://www.newyorker.com/news/daily-comment/morsi-in-bazinga-jon-stewart-defends-bassem-youssef")

ph35_text <- ph35 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "35") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Morsi in Bazinga")

ph35_text

# 36. Big Brothers
ph36 <- read_html("https://www.newyorker.com/magazine/2013/01/14/big-brothers")

ph36_text <- ph36 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "36") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Big Brothers")

ph36_text

# 37. Brothers' Keepers
ph37 <- read_html("https://www.newyorker.com/magazine/2012/12/24/brothers-keepers")

ph37_text <- ph37 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "37") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Brothers' Keepers")

ph37_text

# 38. Tahrir Square Turns Against Morsi
ph38 <- read_html("https://www.newyorker.com/news/news-desk/tahrir-square-turns-against-morsi")

ph38_text <- ph38 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "38") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Tahrir Square Turns Against Morsi")

ph38_text

# 39. Cairo: Between the Protesters and the Embassy
ph39 <- read_html("https://www.newyorker.com/news/news-desk/cairo-between-the-protesters-and-the-embassy")

ph39_text <- ph39 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "39") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Cairo: Between the Protesters and the Embassy")

ph39_text

# 40. Wasta
ph40 <- read_html("https://www.newyorker.com/magazine/2012/07/09/wasta")

ph40_text <- ph40 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "40") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Wasta")

ph40_text

# 41. No Joy in Cairo
ph41 <- read_html("https://www.newyorker.com/news/news-desk/no-joy-in-cairo")

ph41_text <- ph41 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "41") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "No Joy in Cairo")

ph41_text

# 42. A Coup in Cairo?
ph42 <- read_html("https://www.newyorker.com/news/news-desk/a-coup-in-cairo")

ph42_text <- ph42 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "42") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "A Coup in Cairo?")

ph42_text

# 43. Arab Summer
ph43 <- read_html("https://www.newyorker.com/magazine/2012/06/18/arab-summer")

ph43_text <- ph43 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "43") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "Arab Summer")

ph43_text

# 44. Identity Parade
ph44 <- read_html("https://www.newyorker.com/magazine/2012/05/21/identity-parade")

ph44_text <- ph44 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "44") %>% 
  mutate( country = "Uncategorized") %>% 
  mutate( title = "Identity Parade")

ph44_text

# 45. All Due Respect
ph45 <- read_html("https://www.newyorker.com/magazine/2012/01/09/all-due-respect")

ph45_text <- ph45 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "45") %>% 
  mutate( country = "U.S.") %>% 
  mutate( title = "All Due Respect")

ph45_text

# 46. The Mosque on the Square
ph46 <- read_html("https://www.newyorker.com/magazine/2011/12/19/the-mosque-on-the-square")

ph46_text <- ph46 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "46") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "The Mosque on the Square")

ph46_text

# 47. Dr. Don
ph47 <- read_html("https://www.newyorker.com/magazine/2011/09/26/dr-don")

ph47_text <- ph47 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "47") %>% 
  mutate( country = "U.S.") %>% 
  mutate( title = "Dr. Don")

ph47_text

# 48. What Mortenson Got Wrong
ph48 <- read_html("https://www.newyorker.com/news/news-desk/what-mortenson-got-wrong")

ph48_text <- ph48 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "48") %>% 
  mutate( country = "Egypt") %>% 
  mutate( title = "What Mortenson Got Wrong")

ph48_text

# 49. Sargent Shriver, the Peace Corps, and Martin Luther King, Jr.
ph49 <- read_html("https://www.newyorker.com/news/news-desk/sargent-shriver-the-peace-corps-and-martin-luther-king-jr")

ph49_text <- ph49 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "49") %>% 
  mutate( country = "U.S.") %>% 
  mutate( title = "Sargent Shriver")

ph49_text

# 50. Village Voice
ph50 <- read_html("https://www.newyorker.com/magazine/2010/12/20/village-voice")

ph50_text <- ph50 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "50") %>% 
  mutate( country = "Uncategorized") %>% 
  mutate( title = "Village Voice")

ph50_text

# 51. The Uranium Widows
ph51 <- read_html("https://www.newyorker.com/magazine/2010/09/13/the-uranium-widows")

ph51_text <- ph51 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "51") %>% 
  mutate( country = "U.S.") %>% 
  mutate( title = "The Uranium Widows")

ph51_text

# 52. Go West
ph52 <- read_html("https://www.newyorker.com/magazine/2010/04/19/go-west")

ph52_text <- ph52 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "52") %>% 
  mutate( country = "U.S.") %>% 
  mutate( title = "Go West")

ph52_text

# 53. The Great Whatnot of China
ph53 <- read_html("https://www.newyorker.com/news/news-desk/the-great-whatnot-of-china")

ph53_text <- ph53 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "53") %>% 
  mutate( country = "China") %>% 
  mutate( title = "The Great Whatnot of China")

ph53_text

# 54. The Doorknob
ph54 <- read_html("https://www.newyorker.com/news/news-desk/the-doorknob")

ph54_text <- ph54 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "54") %>% 
  mutate( country = "Uncategorized") %>% 
  mutate( title = "The Doorknob")

ph54_text

# 55. Peter Hessler: Meb Keflezighi's Marathon Win
ph55 <- read_html("https://www.newyorker.com/news/news-desk/peter-hessler-meb-keflezighis-marathon-win")

ph55_text <- ph55 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "55") %>% 
  mutate( country = "U.S.") %>% 
  mutate( title = "Peter Hessler: Meb Keflezighi's Marathon Win")

ph55_text

# 56. Chinese Barbizon
ph56 <- read_html("https://www.newyorker.com/magazine/2009/10/26/chinese-barbizon")

ph56_text <- ph56 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "56") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Chinese Barbizon")

ph56_text

# 57. Strange Stones
ph57 <- read_html("https://www.newyorker.com/magazine/2009/01/12/strange-stones")

ph57_text <- ph57 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "57") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Strange Stones")

ph57_text

# 58. The Home Team
ph58 <- read_html("https://www.newyorker.com/magazine/2008/09/15/the-home-team")

ph58_text <- ph58 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "58") %>% 
  mutate( country = "China") %>% 
  mutate( title = "The Home Team")

ph58_text

# 59. Running To Beijing
ph59 <- read_html("https://www.newyorker.com/magazine/2008/08/11/running-to-beijing")

ph59_text <- ph59 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "59") %>% 
  mutate( country = "China") %>% 
  mutate( title = "Running To Beijing")

ph59_text

# 60. After the Earthquake
ph60 <- read_html("https://www.newyorker.com/magazine/2008/05/19/after-the-earthquake")

ph60_text <- ph60 %>% 
  html_elements(".paywall") %>% 
  html_text() %>% 
  unlist() %>% 
  tibble() %>% 
  mutate(Num = "60") %>% 
  mutate( country = "China") %>% 
  mutate( title = "After the Earthquake")

ph60_text

# Combine the data
ph_text1 <- bind_rows(ph1_text,ph2_text,ph3_text,ph4_text,ph5_text,ph6_text,
                      ph7_text,ph8_text,ph9_text,ph10_text)

ph_text2 <- bind_rows(ph11_text,ph12_text,ph13_text,ph14_text,ph15_text,
                      ph16_text,ph17_text,ph18_text,ph19_text,ph20_text)

ph_text3 <- bind_rows(ph21_text,ph22_text,ph23_text,ph24_text,ph25_text,
                      ph26_text,ph27_text,ph28_text,ph29_text,ph30_text)  

ph_text4 <- bind_rows(ph31_text,ph32_text,ph33_text,ph34_text,ph35_text,
                      ph36_text,ph37_text,ph38_text,ph39_text,ph40_text)

ph_text5 <- bind_rows(ph41_text,ph42_text,ph43_text,ph44_text,ph45_text,
                      ph46_text,ph47_text,ph48_text,ph49_text,ph50_text)

ph_text6 <- bind_rows(ph51_text,ph52_text,ph53_text,ph54_text,ph55_text,
                      ph56_text,ph57_text,ph58_text,ph59_text,ph60_text)

# Combination and Clean the data
new_stops <- tibble(word =c("told","it's","didn't","don't",
                            "hundred","thousand","chen","zhang",
                            "luo","li","yakuza","rajeev","namje",
                            "mochizuki"))

full_stop <- stop_words %>% 
  bind_rows(new_stops)

ph_text <- bind_rows(ph_text1,ph_text2,ph_text3,ph_text4,ph_text5,ph_text6) %>% 
  rename("text" = ".") 

ph_text_1 <- ph_text %>% 
  unnest_tokens(input = text,
                 output = word) %>% 
  anti_join(full_stop) %>% 
  filter(!(gsub("'", "", word) %in% gsub("'", "", stop_words$word)) & word != "")

# Most popular words
ph_text_1 %>% 
  count(word, sort = TRUE) %>% 
  with(wordcloud(word, n, max.words = 30, size = 0.6)) 

ph_wordCnt <- ph_text_1 %>% 
  count(word, country, sort = TRUE)


ph_text_1 %>% 
  left_join(sentiments) %>% 
  filter(!is.na(sentiment)) %>% 
  count(country,sentiment, sort = TRUE) %>% 
  ggplot() + 
  geom_col(aes(x = n, y = country,
               fill = sentiment),
               position = "fill")

ph_tf <- ph_text_1 %>% 
  count(word, country, sort = TRUE) %>% 
  bind_tf_idf(term = word,
              document = country,
              n=n)

ph_tf %>% 
  group_by(country) %>% 
  slice_max(tf_idf, n = 12) %>% 
  ungroup() %>%
  mutate(word = reorder(word,tf_idf)) %>% #reorder the word column by the tf-idf
  ggplot() +
  geom_col(aes(x=tf_idf,y=word,fill=country), #plot tf-idf vs word
           show.legend = FALSE) + #fill color in by author, remove the legend
  labs(x = "tf-idf", y = NULL) + #this is how we make labels!
  facet_wrap(~country, ncol = 2, scales = "free")

ph_dtm <- ph_text %>% 
  count(country,word) %>% 
  cast_dtm(document = country, term = word,
           value = n)

ph_lda <- LDA(ph_dtm,k = 4,
                control = list(seed = 123))


ph_tidy1 <- tidy(ph_lda,matrix = "beta")

ph_top_terms1 <- ph_tidy1 %>% 
  group_by(topic) %>% 
  slice_max(beta,n = 15) %>% 
  ungroup() %>% 
  arrange(topic,-beta)%>% 
  mutate(topic = factor(topic)) %>% 
  mutate(topic = fct_recode(topic,
                            "U.S." = "1",
                            "China_City" = "2",
                            "China_Society" = "3",
                            "Egypt" = "4"))

ph_top_terms1 %>%
  mutate(term = reorder_within(term, beta, topic)) %>%
  ggplot(aes(beta, term, fill = factor(topic))) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~ topic, scales = "free") +
  scale_y_reordered()

ph_tidy2 <- tidy(ph_lda,matrix = "gamma")

ph_top_terms2 <- ph_tidy2 %>% 
  mutate(topic = factor(topic)) %>%
  mutate(topic = fct_recode(topic,
                            "U.S." = "1",
                            "China_City" = "2",
                            "China_Society" = "3",
                            "Egypt" = "4")) %>% 
  ggplot() +
  geom_boxplot(aes(x = factor(topic), y = gamma)) +
  facet_wrap(~ document) +
  labs(x = "topic", y = expression(gamma))

ph_text_1 %>% 
  inner_join(get_sentiments("bing")) %>%
  count(country,title,sentiment) %>%
  pivot_wider(names_from = sentiment,
              values_from = n) %>% 
  mutate(sent_score = positive - negative) %>% 
  ggplot() + 
  geom_col(aes(x = title, y = sent_score, 
               fill = country),
           show.legend = F) +
  facet_wrap(~country,scales = "free_x")

ph_text_2<- ph_text %>% 
  unnest_tokens(input = text,
                output = bigrams,
                token = "ngrams",
                n = 2)
# Count the bigrams
ph_count <- ph_text_2 %>% count(bigrams, sort = T)
# Separate into word1 and word2
bigram_counts <- ph_count %>% 
  separate(col = bigrams,
           into = c("word1","word2"),
           sep = " ") %>% 
  filter(!word1 %in% stop_words$word) %>% 
  filter(!word2 %in% stop_words$word) %>% 
  filter(!is.na(word1))
# Remove missing values 
# Remove stopwords
bigram_counts
# Call this whole thing "bigram_counts"


#Then make a
#network graph
bigram_counts %>% 
  graph_from_data_frame()

set.seed(2022)

bigram_counts %>% 
  filter(n > 20) %>% 
  graph_from_data_frame() %>% 
  ggraph( layout = "fr") +
  geom_edge_link() +
  geom_node_point() +
  geom_node_text(aes(label = name), vjust = 1, hjust = 1)

bigrams_separated <- ph_text_2 %>%
  separate(col = bigrams,
           into = c("word1", "word2"), 
           sep = " ")
bigrams_separated

bigrams_filtered <- bigrams_separated %>%
  filter(!word1 %in% stop_words$word) %>%
  filter(!word2 %in% stop_words$word)

bigrams_filtered %>% 
  unite(bigrams,word1,word2, sep = " ") %>% 
  count(country,bigrams, sort = TRUE) %>% 
  filter(bigrams != "NA NA") %>% 
  filter(n > 18) %>% 
  ggplot() + 
  geom_col(aes(x = n, y = bigrams,
               fill = country),show.legend = F) +
  facet_wrap(~country,scales = "free")

ph_test <- read_html("https://www.newyorker.com/contributors/peter-hessler")

ph_urls <- ph_test %>% 
  html_elements(".River__hed___re6RP") %>% 
  html_attrs() %>% 
  unlist() %>%
  tibble()

ph_urls



























