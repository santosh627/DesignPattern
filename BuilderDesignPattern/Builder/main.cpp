#include <iostream>
#include <string>
#include <vector>
#include <sstream>

using namespace std;

struct HtmlElement
{
    string name, text;
    vector<HtmlElement> elements;
    const size_t indent_size = 2;
    
    HtmlElement () {}
    
    HtmlElement(const string &name, const string &text) : name (name), text(text) {}
    
    string str (int indent = 0) const
    {
        ostringstream oss;
        string i(indent_size*indent, ' ');
        oss << i << "<" << name << ">" << endl;
        
        if (text.size() > 0 )
            oss << string(indent_size* (indent+1) , ' ') << text << endl;

        for (const auto& e : elements)
            oss << e.str(indent + 1);

        oss << i << "</" << name << ">" << endl;
        
        return oss.str();
    }
};

struct HtmlBuilder
{
    HtmlElement root;
    
    HtmlBuilder (string root_name)
    {
        root.name = root_name;
    }
    
    HtmlBuilder& add_child (string child_name, string child_text)
    {
        HtmlElement e {child_name, child_text};
        root.elements.emplace_back(e);
        
        return *this;
    }
    
    string str() const {return root.str();}

};
  
int main()
{
    HtmlBuilder builder {"ul"};
    builder.add_child("li" , "Hello").add_child("li" , "World");
    
    cout << builder.str() << endl;
    
    return 0;
}
