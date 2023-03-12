#include <utility>
#include <fstream>
#include <string>
#include <regex>
#include <iostream>
#include <vector>

#define pb push_back
#define fs first
#define se second

using namespace std;

const string TERMINATOR_COMMANDS[] = {
	"retq", "jo", "jno", "js",
	"jns", "je", "jz", "jne",
	"jnz", "jb", "jnae", "jc",
	"jnb", "jae", "jnc", "jbe",
	"jna", "ja", "jnbe", "jl",
	"jnge", "jge", "jnl", "jle",
	"jng", "jg", "jnle", "jp",
	"jpe", "jnp", "jpo", "jcxz",
	"jecxz", "jmp"
};

bool is_terminator(string command) {
	for(int i = 0; i < sizeof(TERMINATOR_COMMANDS)/sizeof(TERMINATOR_COMMANDS[0]); i++) {
		if(command == TERMINATOR_COMMANDS[i])
			return true;
	}
	return false;
}

bool touches_memory(string command, string rest) {
	string line = command + " " + rest;
	regex rgx("[[:lower:]]*mov[[:lower:]]* .*\\(.*\\).*");
	return regex_search(line, rgx);
}

bool is_simple(string command, string rest) {
	if(command == "callq")
		return false;
	if(touches_memory(command, rest))
		return false;
	return true;
}

int main(int argc, char **argv) {
	if(argc != 2) {
		cout << "Wrong number of arguments!\n";
		return -1;
	}

	string line;
	ifstream myfile(argv[1]);
	regex asm_command("^\\t([[:lower:]]{1,})\\t{0,2}(.*)");
	smatch matches;
	
	vector<vector<pair<string, string>>> blocks;
	vector<pair<string, string>> block;

	while(getline(myfile, line)) {
		if(regex_search(line, matches, asm_command)) {
			string command = matches[1];
			string rest = matches[2];

			pair<string, string> ln(command, rest);
			block.pb(ln);

			if(is_terminator(command)) {
				blocks.pb(block);
				block.clear();
			}
		}
	}

	int rop = 0;
	int jop = 0;
	int total = 0;
	for(auto G : blocks) {
		int pointer = -1;
		for(int i = 0; i < G.size(); i++) {
			auto L = G[i];
			if(!is_simple(L.fs, L.se))
				pointer = i;
		}
		int vulnerable = G.size()-pointer-2;
		if(G.back().fs == "retq")
			rop += vulnerable;
		else if(G.back().fs != "jmp")
			jop += vulnerable;
		total += G.size();
	}
	cout << "Total: " << total << "\n";
	cout << "Rop: " << rop << "\n";
	cout << "Jop: " << jop << "\n";
	return 0;
}
