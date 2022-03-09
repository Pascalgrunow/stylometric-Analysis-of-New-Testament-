install.packages("tm")
install.packages("ggplot2")
install.packages("tidytext")
install.packages("dplyr")
install.packages("stringi")
install.packages("stringr")
install.packages("readtext")
install.packages("quanteda.textplots")
install.packages("reshape2")
install.packages("quanteda.textstats")
install.packages("writexl")
install.packages("tidyverse")
install.packages("quanteda")
install.packages("NLP")

library(tm)
library(ggplot2)
library(tidytext)
library(dplyr)
library(stringi)
library(stringr)
library(readtext)
library(quanteda.textplots)
library(reshape2)
library(quanteda.textstats)
library(writexl)
library(tidyverse)
library(quanteda)
library(NLP)

#LUKE_CORPUS

#corpus als link speichern
luke_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\luke_corpus",
                          pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Luke <- readtext(paste0(luke_corpus, "*"))

#Dataframe daraus erstellen
df_luke_corpus <- data.frame(Luke)

#erstellen eines Corpus vom Dataframe
luke_corpus <- corpus(df_luke_corpus)

#erstellen eines tokens
tokens_luke_corpus <- tokens(luke_corpus, what = "word")

#bereinigen der daten
tokens_luke_corpus <- tokens(df_luke_corpus$text, what = "word",
                             remove_punct = TRUE,
                             remove_symbols = TRUE,
                             remove_numbers = TRUE,
                             remove_separators = TRUE)

#Kleinschreibung
tokens_luke_corpus <- tokens_tolower(tokens_luke_corpus)

#stopwords entfernen
tokens_luke_corpus <- tokens_remove(tokens_luke_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_luke_corpus <- tokens_remove(tokens_luke_corpus, c("luke"))

#Lemmatizing
tokens_luke_corpus <- tokens_wordstem(tokens_luke_corpus)

#erstellen einer Document-Feature-Matrix
dfm_luke_corpus <- dfm(tokens_luke_corpus)




#ACT_CORPUS

#corpus als link speichern
act_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\act_corpus",
                          pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Act <- readtext(paste0(act_corpus, "*"))

#Dataframe daraus erstellen
df_act_corpus <- data.frame(Act)

#erstellen eines Corpus vom Dataframe
corpus_act <- corpus(df_act_corpus)

#erstellen eines tokens
tokens_act_corpus <- tokens(corpus_act, what = "word")

#bereinigen der daten
tokens_act_corpus <- tokens(df_act_corpus$text, what = "word",
                             remove_punct = TRUE,
                             remove_symbols = TRUE,
                             remove_numbers = TRUE,
                             remove_separators = TRUE)

#Kleinschreibung
tokens_act_corpus <- tokens_tolower(tokens_act_corpus)

#stopwords entfernen
tokens_act_corpus <- tokens_remove(tokens_act_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_act_corpus <- tokens_remove(tokens_act_corpus, c("act"))

#Lemmatizing
tokens_act_corpus <- tokens_wordstem(tokens_act_corpus)

#erstellen einer Document-Feature-Matrix
dfm_act_corpus <- dfm(tokens_act_corpus)




#PAULUS_CORPUS

#corpus als link speichern
paulus_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\paulus_corpus",
                         pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Paulus <- readtext(paste0(paulus_corpus, "*"))

#Dataframe daraus erstellen
df_paulus_corpus <- data.frame(Paulus)

#erstellen eines Corpus vom Dataframe
corpus_paulus <- corpus(df_paulus_corpus)

#erstellen eines tokens
tokens_paulus_corpus <- tokens(corpus_paulus, what = "word")

#bereinigen der daten
tokens_paulus_corpus <- tokens(df_paulus_corpus$text, what = "word",
                            remove_punct = TRUE,
                            remove_symbols = TRUE,
                            remove_numbers = TRUE,
                            remove_separators = TRUE)

#Kleinschreibung
tokens_paulus_corpus <- tokens_tolower(tokens_paulus_corpus)

#stopwords entfernen
tokens_paulus_corpus <- tokens_remove(tokens_paulus_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_paulus_corpus <- tokens_remove(tokens_paulus_corpus, c("paulus"))

#Lemmatizing
tokens_paulus_corpus <- tokens_wordstem(tokens_paulus_corpus)

#erstellen einer Document-Feature-Matrix
dfm_paulus_corpus <- dfm(tokens_paulus_corpus)




#STUDENT_CORPUS

#corpus als link speichern
student_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\student_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Student <- readtext(paste0(student_corpus, "*"))

#Dataframe daraus erstellen
df_student_corpus <- data.frame(Student)

#erstellen eines Corpus vom Dataframe
corpus_student <- corpus(df_student_corpus)

#erstellen eines tokens
tokens_student_corpus <- tokens(corpus_student, what = "word")

#bereinigen der daten
tokens_student_corpus <- tokens(df_student_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_student_corpus <- tokens_tolower(tokens_student_corpus)

#stopwords entfernen
tokens_student_corpus <- tokens_remove(tokens_student_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_student_corpus <- tokens_remove(tokens_student_corpus, c("paulus"))

#Lemmatizing
tokens_student_corpus <- tokens_wordstem(tokens_student_corpus)

#erstellen einer Document-Feature-Matrix
dfm_student_corpus <- dfm(tokens_student_corpus)




#KOLOSS_CORPUS

#corpus als link speichern
koloss_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\koloss_corpus",
                             pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Koloss <- readtext(paste0(koloss_corpus, "*"))

#Dataframe daraus erstellen
df_koloss_corpus <- data.frame(Koloss)

#erstellen eines Corpus vom Dataframe
corpus_koloss <- corpus(df_koloss_corpus)

#erstellen eines tokens
tokens_koloss_corpus <- tokens(corpus_koloss, what = "word")

#bereinigen der daten
tokens_koloss_corpus <- tokens(df_koloss_corpus$text, what = "word",
                                remove_punct = TRUE,
                                remove_symbols = TRUE,
                                remove_numbers = TRUE,
                                remove_separators = TRUE)

#Kleinschreibung
tokens_koloss_corpus <- tokens_tolower(tokens_koloss_corpus)

#stopwords entfernen
tokens_koloss_corpus <- tokens_remove(tokens_koloss_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_koloss_corpus <- tokens_remove(tokens_koloss_corpus, c("colossians"))

#Lemmatizing
tokens_koloss_corpus <- tokens_wordstem(tokens_koloss_corpus)

#erstellen einer Document-Feature-Matrix
dfm_koloss_corpus <- dfm(tokens_koloss_corpus)



#PAULUS_W_KOLOSS_CORPUS

#corpus als link speichern
paulus_w_koloss_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\paulus_w_koloss_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Paulus_w_koloss_corpus <- readtext(paste0(paulus_w_koloss_corpus, "*"))

#Dataframe daraus erstellen
df_paulus_w_koloss_corpus <- data.frame(Paulus_w_koloss_corpus)

#erstellen eines Corpus vom Dataframe
corpus_paulus_w_koloss <- corpus(df_paulus_w_koloss_corpus)

#erstellen eines tokens
tokens_paulus_w_koloss_corpus <- tokens(corpus_paulus_w_koloss, what = "word")

#bereinigen der daten
tokens_paulus_w_koloss_corpus <- tokens(df_paulus_w_koloss_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_paulus_w_koloss_corpus <- tokens_tolower(tokens_paulus_w_koloss_corpus)

#stopwords entfernen
tokens_paulus_w_koloss_corpus <- tokens_remove(tokens_paulus_w_koloss_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_paulus_w_koloss_corpus <- tokens_remove(tokens_paulus_w_koloss_corpus, c("corinthians",
                                                                                "thessalonians",
                                                                                "timothy",
                                                                                "ephesians",
                                                                                "galatians",
                                                                                "hebrews",
                                                                                "philemon",
                                                                                "philippians",
                                                                                "romans",
                                                                                "titus"))

#Lemmatizing
tokens_paulus_w_koloss_corpus <- tokens_wordstem(tokens_paulus_w_koloss_corpus)

#erstellen einer Document-Feature-Matrix
dfm_paulus_w_koloss_corpus <- dfm(tokens_paulus_w_koloss_corpus)




#KATHOL_CORPUS

#corpus als link speichern
kathol_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\kathol_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Kathol <- readtext(paste0(kathol_corpus, "*"))

#Dataframe daraus erstellen
df_kathol_corpus <- data.frame(Kathol)

#erstellen eines Corpus vom Dataframe
corpus_kathol <- corpus(df_kathol_corpus)

#erstellen eines tokens
tokens_kathol_corpus <- tokens(corpus_kathol, what = "word")

#bereinigen der daten
tokens_kathol_corpus <- tokens(df_kathol_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_kathol_corpus <- tokens_tolower(tokens_kathol_corpus)

#stopwords entfernen
tokens_kathol_corpus <- tokens_remove(tokens_kathol_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_kathol_corpus <- tokens_remove(tokens_kathol_corpus, c("john",
                                                              "peter",
                                                              "james",
                                                              "jude"))

#Lemmatizing
tokens_kathol_corpus <- tokens_wordstem(tokens_kathol_corpus)

#erstellen einer Document-Feature-Matrix
dfm_kathol_corpus <- dfm(tokens_kathol_corpus)




#PETER_CORPUS

#corpus als link speichern
peter_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\peter_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Peter <- readtext(paste0(peter_corpus, "*"))

#Dataframe daraus erstellen
df_peter_corpus <- data.frame(Peter)

#erstellen eines Corpus vom Dataframe
corpus_peter <- corpus(df_peter_corpus)

#erstellen eines tokens
tokens_peter_corpus <- tokens(corpus_peter, what = "word")

#bereinigen der daten
tokens_peter_corpus <- tokens(df_peter_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_peter_corpus <- tokens_tolower(tokens_peter_corpus)

#stopwords entfernen
tokens_peter_corpus <- tokens_remove(tokens_peter_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_peter_corpus <- tokens_remove(tokens_peter_corpus, c("peter"))

#Lemmatizing
tokens_peter_corpus <- tokens_wordstem(tokens_peter_corpus)

#erstellen einer Document-Feature-Matrix
dfm_peter_corpus <- dfm(tokens_peter_corpus)




#JUDE-CORPUS

#corpus als link speichern
jude_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\jude_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Jude <- readtext(paste0(jude_corpus, "*"))

#Dataframe daraus erstellen
df_jude_corpus <- data.frame(Jude)

#erstellen eines Corpus vom Dataframe
corpus_jude <- corpus(df_jude_corpus)

#erstellen eines tokens
tokens_jude_corpus <- tokens(corpus_jude, what = "word")

#bereinigen der daten
tokens_jude_corpus <- tokens(df_jude_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_jude_corpus <- tokens_tolower(tokens_jude_corpus)

#stopwords entfernen
tokens_jude_corpus <- tokens_remove(tokens_jude_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_jude_corpus <- tokens_remove(tokens_jude_corpus, c("jude"))

#Lemmatizing
tokens_jude_corpus <- tokens_wordstem(tokens_jude_corpus)

#erstellen einer Document-Feature-Matrix
dfm_jude_corpus <- dfm(tokens_jude_corpus)




#JOHN_CORPUS

#corpus als link speichern
john_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\john_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
John <- readtext(paste0(john_corpus, "*"))

#Dataframe daraus erstellen
df_john_corpus <- data.frame(John)

#erstellen eines Corpus vom Dataframe
corpus_john <- corpus(df_john_corpus)

#erstellen eines tokens
tokens_john_corpus <- tokens(corpus_john, what = "word")

#bereinigen der daten
tokens_john_corpus <- tokens(df_john_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_john_corpus <- tokens_tolower(tokens_john_corpus)

#stopwords entfernen
tokens_john_corpus <- tokens_remove(tokens_john_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_john_corpus <- tokens_remove(tokens_john_corpus, c("john"))

#Lemmatizing
tokens_john_corpus <- tokens_wordstem(tokens_john_corpus)

#erstellen einer Document-Feature-Matrix
dfm_john_corpus <- dfm(tokens_john_corpus)




#REV_CORPUS

#corpus als link speichern
rev_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\rev_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Rev <- readtext(paste0(rev_corpus, "*"))

#Dataframe daraus erstellen
df_rev_corpus <- data.frame(Rev)

#erstellen eines Corpus vom Dataframe
corpus_rev <- corpus(df_rev_corpus)

#erstellen eines tokens
tokens_rev_corpus <- tokens(corpus_rev, what = "word")

#bereinigen der daten
tokens_rev_corpus <- tokens(df_rev_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_rev_corpus <- tokens_tolower(tokens_rev_corpus)

#stopwords entfernen
tokens_rev_corpus <- tokens_remove(tokens_rev_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_rev_corpus <- tokens_remove(tokens_rev_corpus, c("revelation"))

#Lemmatizing
tokensrevs_corpus <- tokens_wordstem(tokens_rev_corpus)

#erstellen einer Document-Feature-Matrix
dfm_rev_corpus <- dfm(tokens_rev_corpus)




#PAULINUM_CORPUS

#corpus als link speichern
paulinum_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\paulinum_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Paulinum <- readtext(paste0(paulinum_corpus, "*"))

#Dataframe daraus erstellen
df_paulinum_corpus <- data.frame(Paulinum)

#erstellen eines Corpus vom Dataframe
corpus_paulinum <- corpus(df_paulinum_corpus)

#erstellen eines tokens
tokens_paulinum_corpus <- tokens(corpus_paulinum, what = "word")

#bereinigen der daten
tokens_paulinum_corpus <- tokens(df_paulinum_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_paulinum_corpus <- tokens_tolower(tokens_paulinum_corpus)

#stopwords entfernen
tokens_paulinum_corpus <- tokens_remove(tokens_paulinum_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_paulinum_corpus <- tokens_remove(tokens_paulinum_corpus, c("corinthians",
                                                                  "thessalonians",
                                                                  "timothy",
                                                                  "ephesians",
                                                                  "galatians",
                                                                  "hebrews",
                                                                  "philemon",
                                                                  "philippians",
                                                                  "romans",
                                                                  "titus",
                                                                  "colossians"))

#Lemmatizing
tokens_paulinum_corpus <- tokens_wordstem(tokens_paulinum_corpus)

#erstellen einer Document-Feature-Matrix
dfm_paulinum_corpus <- dfm(tokens_paulinum_corpus)




#KATH_W_PETRUS_CORPUS

#corpus als link speichern
kath_w_petrus_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\kath_w_petrus_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Kath_w_petrus <- readtext(paste0(kath_w_petrus_corpus, "*"))

#Dataframe daraus erstellen
df_kath_w_petrus_corpus <- data.frame(Kath_w_petrus)

#erstellen eines Corpus vom Dataframe
corpus_kath_w_petrus <- corpus(df_kath_w_petrus_corpus)

#erstellen eines tokens
tokens_kath_w_petrus_corpus <- tokens(corpus_kath_w_petrus, what = "word")

#bereinigen der daten
tokens_kath_w_petrus_corpus <- tokens(df_kath_w_petrus_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_kath_w_petrus_corpus <- tokens_tolower(tokens_kath_w_petrus_corpus)

#stopwords entfernen
tokens_kath_w_petrus_corpus <- tokens_remove(tokens_kath_w_petrus_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_kath_w_petrus_corpus <- tokens_remove(tokens_kath_w_petrus_corpus, c("john",
                                                                            "james",
                                                                            "jude"))

#Lemmatizing
tokens_kath_w_petrus_corpus <- tokens_wordstem(tokens_kath_w_petrus_corpus)

#erstellen einer Document-Feature-Matrix
dfm_kath_w_petrus_corpus <- dfm(tokens_kath_w_petrus_corpus)




#KATH_W_JUDE_CORPUS

#corpus als link speichern
kath_w_jude_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\kath_w_jude_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Kath_w_jude_corpus <- readtext(paste0(kath_w_jude_corpus, "*"))

#Dataframe daraus erstellen
df_kath_w_jude_corpus <- data.frame(Kath_w_jude_corpus)

#erstellen eines Corpus vom Dataframe
corpus_kath_w_jude <- corpus(df_kath_w_jude_corpus)

#erstellen eines tokens
tokens_kath_w_jude_corpus <- tokens(corpus_kath_w_jude, what = "word")

#bereinigen der daten
tokens_kath_w_jude_corpus <- tokens(df_kath_w_jude_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_kath_w_jude_corpus <- tokens_tolower(tokens_kath_w_jude_corpus)

#stopwords entfernen
tokens_kath_w_jude_corpus <- tokens_remove(tokens_kath_w_jude_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_kath_w_jude_corpus <- tokens_remove(tokens_kath_w_jude_corpus, c("john",
                                                                        "peter",
                                                                        "james"))

#Lemmatizing
tokens_kath_w_jude_corpus <- tokens_wordstem(tokens_kath_w_jude_corpus)

#erstellen einer Document-Feature-Matrix
dfm_kath_w_jude_corpus <- dfm(tokens_kath_w_jude_corpus)




#KATH_W_JOHN_CORPUS

#corpus als link speichern
kath_w_john_corpus <- list.files(path = "H:\\StilometricAnalysis_NT\\corpora\\kath_w_john_corpus",
                            pattern="*.txt", full.names=TRUE)

#einlesen von den Texten aus dem Ordner
Kath_w_john <- readtext(paste0(kath_w_john_corpus, "*"))

#Dataframe daraus erstellen
df_kath_w_john_corpus <- data.frame(Kath_w_john)

#erstellen eines Corpus vom Dataframe
corpus_kath_w_john <- corpus(df_kath_w_john_corpus)

#erstellen eines tokens
tokens_kath_w_john_corpus <- tokens(corpus_kath_w_john, what = "word")

#bereinigen der daten
tokens_kath_w_john_corpus <- tokens(df_kath_w_john_corpus$text, what = "word",
                               remove_punct = TRUE,
                               remove_symbols = TRUE,
                               remove_numbers = TRUE,
                               remove_separators = TRUE)

#Kleinschreibung
tokens_kath_w_john_corpus <- tokens_tolower(tokens_kath_w_john_corpus)

#stopwords entfernen
tokens_kath_w_john_corpus <- tokens_remove(tokens_kath_w_john_corpus, stopwords("english"))

#hinzufügen einer individuellen stopwordlist mit ausgewählten Wörtern
tokens_kath_w_john_corpus <- tokens_remove(tokens_kath_w_john_corpus, c("peter",
                                                                        "james",
                                                                        "jude"))

#Lemmatizing
tokens_kath_w_john_corpus <- tokens_wordstem(tokens_kath_w_john_corpus)

#erstellen einer Document-Feature-Matrix
dfm_kath_w_john_corpus <- dfm(tokens_kath_w_john_corpus)




#PLOTS ERSTELLEN

#LUKE_CORPUS

#most frequent words plot erstellen
frequency_luke_corpus <- textstat_frequency(dfm_luke_corpus, n=20)
#sortieren
frequency_luke_corpus$feature <- with(frequency_luke_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_luke_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                      (angle = 90, hjust = 1))


#ACT_CORPUS

#most frequent words plot erstellen
frequency_act_corpus <- textstat_frequency(dfm_act_corpus, n=20)
#sortieren
frequency_act_corpus$feature <- with(frequency_act_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_act_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                     (angle = 90, hjust = 1))


#PAULUS_CORPUS

#most frequent words plot erstellen
frequency_paulus_corpus <- textstat_frequency(dfm_paulus_corpus, n=20)
#sortieren
frequency_paulus_corpus$feature <- with(frequency_paulus_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_paulus_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                        (angle = 90, hjust = 1))


#STUDENT_CORPUS

#most frequent words plot erstellen
frequency_student_corpus <- textstat_frequency(dfm_student_corpus, n=20)
#sortieren
frequency_student_corpus$feature <- with(frequency_student_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_student_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#KOLOSS_CORPUS

#most frequent words plot erstellen
frequency_koloss_corpus <- textstat_frequency(dfm_koloss_corpus, n=20)
#sortieren
frequency_koloss_corpus$feature <- with(frequency_koloss_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_koloss_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#PAULUS_W_KOLOSS_CORPUS

#most frequent words plot erstellen
frequency_paulus_w_koloss_corpus <- textstat_frequency(dfm_paulus_w_koloss_corpus, n=20)
#sortieren
frequency_paulus_w_koloss_corpus$feature <- with(frequency_paulus_w_koloss_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_paulus_w_koloss_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#KATHOL_CORPUS

#most frequent words plot erstellen
frequency_kathol_corpus <- textstat_frequency(dfm_kathol_corpus, n=20)
#sortieren
frequency_kathol_corpus$feature <- with(frequency_kathol_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_kathol_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))



#PETER_CORPUS

#most frequent words plot erstellen
frequency_peter_corpus <- textstat_frequency(dfm_peter_corpus, n=20)
#sortieren
frequency_peter_corpus$feature <- with(frequency_peter_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_peter_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#JUDE_CORPUS

#most frequent words plot erstellen
frequency_jude_corpus <- textstat_frequency(dfm_jude_corpus, n=20)
#sortieren
frequency_jude_corpus$feature <- with(frequency_jude_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_jude_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#JOHN_CORPUS

#most frequent words plot erstellen
frequency_john_corpus <- textstat_frequency(dfm_john_corpus, n=20)
#sortieren
frequency_john_corpus$feature <- with(frequency_john_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_john_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#REV_CORPUS

#most frequent words plot erstellen
frequency_rev_corpus <- textstat_frequency(dfm_rev_corpus, n=20)
#sortieren
frequency_rev_corpus$feature <- with(frequency_rev_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_rev_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#PAULINUM_CORPUS

#most frequent words plot erstellen
frequency_paulinum_corpus <- textstat_frequency(dfm_paulinum_corpus, n=20)
#sortieren
frequency_paulinum_corpus$feature <- with(frequency_paulinum_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_paulinum_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#KATH_W_PETRUS_CORPUS

#most frequent words plot erstellen
frequency_kath_w_petrus_corpus <- textstat_frequency(dfm_kath_w_petrus_corpus, n=20)
#sortieren
frequency_kath_w_petrus_corpus$feature <- with(frequency_kath_w_petrus_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_kath_w_petrus_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#KATH_W_JUDE_CORPUS

#most frequent words plot erstellen
frequency_kath_w_jude_corpus <- textstat_frequency(dfm_kath_w_jude_corpus, n=20)
#sortieren
frequency_kath_w_jude_corpus$feature <- with(frequency_kath_w_jude_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_kath_w_jude_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#KATH_W_JOHN_CORPUS

#most frequent words plot erstellen
frequency_kath_w_john_corpus <- textstat_frequency(dfm_kath_w_john_corpus, n=20)
#sortieren
frequency_kath_w_john_corpus$feature <- with(frequency_kath_w_john_corpus, reorder(feature, -frequency))
#plot erstellen
ggplot(frequency_kath_w_john_corpus, aes(x = feature, y = frequency)) + geom_point() + theme(axis.text.x = element_text
                                                                                         (angle = 90, hjust = 1))


#mehrfache Anwendung von stylo zur Ermittlung von n-grams (MFC)
stylo()

#erstellen eines kompletten Corpus aus allen Büchern

corpus_full <- list.files(path = "H:\\StilometricAnalysis_NT\\corpus", pattern="*.txt", full.names=TRUE)
Corpus_full <- readtext(paste0(corpus_full, "*"))
corpus_full <- data.frame(Corpus_full)
corpus_full <- corpus(corpus_full)

#erstellen eines Dataframe zur Ausgabe der Komplexitaet der Saetze
complexity <- textstat_summary(corpus_full)
write_xlsx(complexity, "H:\\StilometricAnalysis_NT\\Ergebnisse\\Komplexitaet_Saetze.xlsx")

require(openNLP)
require(openNLPdata)

#openNLP
sent_token_annotator <- openNLP::Maxent_Sent_Token_Annotator()

word_token_annotator <- Maxent_Word_Token_Annotator()

pos_tag_annotator <- Maxent_POS_Tag_Annotator()

annotator_pipeline <- Annotator_Pipeline(sent_token_annotator,
                                         word_token_annotator, pos_tag_annotator)
#funktion für die annotation
annotateDocuments <- function(doc, pos_filter = NULL) {
  doc <- as.String(doc)
  doc_with_annotations <- NLP::annotate(doc, annotator_pipeline)
  tags <- sapply(subset(doc_with_annotations, type == "word")$features,
                 `[[`, "POS")
  tokens <- doc[subset(doc_with_annotations, type == "word")]
  if (!is.null(pos_filter)) {
    res <- tokens[tags %in% pos_filter]
  } else {
    res <- paste0(tokens, "_", tags)
  }
  res <- paste(res, collapse = " ")
  return(res)
}

#annotieren sämtlicher Corpora welche benötigt werden zum Vergleich

annotated_luke_corpus <- lapply(luke_corpus, annotateDocuments)
annotated_act_corpus <- lapply(corpus_act, annotateDocuments)
annotated_paulus_corpus <- lapply(corpus_paulus, annotateDocuments)
annotated_student_corpus <- lapply(corpus_student, annotateDocuments)
annotated_koloss_corpus <- lapply(corpus_koloss, annotateDocuments)
annotated_paulus_w_koloss_corpus <- lapply(corpus_paulus_w_koloss, annotateDocuments)
annotated_kathol_corpus <- lapply(corpus_kathol, annotateDocuments)
annotated_peter_corpus <- lapply(corpus_peter, annotateDocuments)
annotated_jude_corpus <- lapply(corpus_jude, annotateDocuments)
annotated_john_corpus <- lapply(corpus_john, annotateDocuments)
annotated_rev_corpus <- lapply(corpus_rev, annotateDocuments)
annotated_paulinum_corpus <- lapply(corpus_paulinum, annotateDocuments)
annotated_kath_w_petrus_corpus <- lapply(corpus_kath_w_petrus, annotateDocuments)
annotated_kath_w_jude_corpus <- lapply(corpus_kath_w_jude, annotateDocuments)
annotated_kath_w_john_corpus <- lapply(corpus_kath_w_john, annotateDocuments)

#speichern der bearbeiteten Texte

lapply(annotated_luke_corpus, write, "annotated_luke.txt")
lapply(annotated_act_corpus, write, "annotated_act.txt")
lapply(annotated_paulus_corpus, write, "annotated_paulus.txt")
lapply(annotated_student_corpus, write, "annotated_student.txt")
lapply(annotated_koloss_corpus, write, "annotated_koloss.txt")
lapply(annotated_paulus_w_koloss_corpus, write, "annotated_paulus_w_koloss.txt")
lapply(annotated_kathol_corpus, write, "annotated_kathol.txt")
lapply(annotated_peter_corpus, write, "annotated_peter.txt")
lapply(annotated_jude_corpus, write, "annotated_jude.txt")
lapply(annotated_john_corpus, write, "annotated_john.txt")
lapply(annotated_rev_corpus, write, "annotated_rev.txt")
lapply(annotated_paulinum_corpus, write, "annotated_paulinum.txt")
lapply(annotated_kath_w_petrus_corpus, write, "annotated_kath_w_petrus.txt")
lapply(annotated_kath_w_jude_corpus, write, "annotated_kath_w_jude.txt")
lapply(annotated_kath_w_john_corpus, write, "annotated_kath_w_joh.txt")

