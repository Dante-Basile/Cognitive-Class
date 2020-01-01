import pandas as pd
#Loading Data with Pandas
csvPath = ("/home/db1070/Repos/Python-for-Data-Sci-Cog/"
        "ExampleCode/album_info.csv")
albumCSV_df = pd.read_csv(csvPath)
head_albumCSV_df = albumCSV_df.head() #first 5 rows
albumDict = {'album': ['Thriller', 'Back in Black',\
                       'The Dark Side of the Moon',\
                       'The Bodyguard', 'Bat Out of Hell'],
'Released': [1982, 1980, 1973, 1992, 1977],
'Length': ['00:42:19', '00:42:11', '00:42:49', '00:57:44',\
           '00:46:33']}
albumDict_df = pd.DataFrame(albumDict)
lengthCSV_df = albumCSV_df[['Length']]
artLenGenCSV_df = albumCSV_df[['Artist', 'Length', 'Genre']]
print(albumCSV_df.ix[0, 0]) #ix deprecated: use .loc for label or .iloc for pos
print(albumCSV_df.ix[1, 0])
print(albumCSV_df.ix[0, 1])
print(albumCSV_df.ix[0, 'Artist'])
print(albumCSV_df.ix[1, 'Artist'])
slice1CSV_df = albumCSV_df.ix[0:2, 0:3]
slice2CSV_df = albumCSV_df.ix[0:2, 'Artist':'Released']
#Working with and Saving Data
relYrs = albumCSV_df['Released'].unique()
post1979CSV_df = albumCSV_df[albumCSV_df['Released'] >= 1980]
post1979CSV_df.to_csv('post1979.csv')