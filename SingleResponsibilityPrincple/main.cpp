/*************************************************************************
1. Single Responsibility Principle: This principle states that “a class should have only one reason to change”
which means every class should have a single responsibility or single job or single purpose.
Take the example of developing software. The task is divided into different members doing different things
as front-end designers do design, the tester does testing and backend developer takes care of
backend development part then we can say that everyone has a single job or responsibility.
Most of the time it happens that when programmers have to add features or
new behavior they implement everything into the existing class which is completely wrong.
It makes their code lengthy, complex and consumes time when later something needs to be modified.
Use layers in your application and break God classes into smaller classes or modules.
***************************************************************************/

#include <iostream>
#include <string>
#include <vector>
#include <fstream>
#include <boost/lexical_cast.hpp>

using namespace std;
using namespace boost;

struct Journal
{
    string title;
    vector<strings> entries;
    
    Journal (const string &title) : title(title) {}
    
    void add_entry(const string& entry)
    {
        static int count = 0;
        entries.push_back(lexical_cast<string>(count++) + " : " + entry);
    }
    
    void save(const string& filename)
    {
        ofstream ofs(filename);
        
        for (auto& e : entries)
            ofs << e << endl;
    }
};

struct PersistenceManager
{
    static void save(const Journal& j, const string& filename)
    {
        ofstream ofs(filename);
        
        for (auto& e : j.entries)
            ofs << e << endl;
    }
};

int main()
{
    Journal journal("Dear Diary");
    journal.add_entry("I ate a bug.");
    journal.add_entry("I cried today.");
    
    PersistanceManager pm;
    pm.save(journal, "Diary.txt");
    return 0;
    
}
