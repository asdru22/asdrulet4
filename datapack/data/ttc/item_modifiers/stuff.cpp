#include <iostream>
using namespace std;
const string using_nspace = "ttc";
int main() {
	bool stop = true;
	int acc_inserted = 0,i=0;
	string type, name, rarity, slot="null", item,tool_type;
	int damage_reduction=0,level_req,damage,mining_speed=0, arrow_speed = 0, crit_damage, crit_chance, mana_req = 0, lifesteal, max_mana, mana_regen, max_psychosis,durability=0, psychosis_used=0,health,hp_regen,defense,dodge_chance;
	double attack_speed=0, knockback_resistance=0, movement_speed=0, luck=0;
	string accessory_ids[100];
	//---------- MINECRAFT ID
	cout << "Specify MINECRAFT BASE ITEM: ";
	cin >> item;
	//---------- TYPE
	cout << "Specify item type <melee/ranged/magic/armor/accessory/tool/telekinetic/material/shield>: ";
	cin >> type;
	if (type == "armor") {
		//--------- ARMOR TYPE
		cout << "specify armor slot <head/chest/legs/feet>: ";
		cin >> slot;
	} else	if (type == "tool") {
		//--------- TOOL TYPE
		cout << "specify tool type <pickaxe/axe>: ";
		cin >> tool_type;
		if (tool_type == "pickaxe") item = "netherite_pickaxe";
	}
	//---------- NAME
	cout << "Specify item name (this is actually the id, so use lowercase letters and _ instead of spaces): ";
	cin >> name;
	//---------- RARITY
	cout << "Specify item rarity <common/uncommon/rare/epic/legendary/mystic/special>: ";
	cin >> rarity;
	if (type != "material") {
		//---------- LEVEL REQUIRED
		cout << "Define level required: ";
		cin >> level_req;
		if (type == "accessory") {
			cout << "accessory ability ids (enter 0 to stop): ";
			do {
				cout << "\naccessory: ";
				cin >> accessory_ids[i];
				if (accessory_ids[i] == "0") stop = false;
				i++;
			} while (stop);
		}
		//---------- DAMAGE
		cout << "Define item damage: ";
		cin >> damage;
		//---------- ATTACK SPEED
		if ((type == "melee") || (type == "armor") || (type == "accessory")) {
			cout << "Define item attack speed: ";
			cin >> attack_speed;
		}
		//---------- ARROW SPEED
		if ((type == "ranged") || (type == "armor") || (type == "accessory")) {
			cout << "Define item arrow speed: ";
			cin >> arrow_speed;
		}
		//---------- MINING SPEED
		if ((type == "tool") || (type == "armor") || (type == "accessory")) {
			cout << "Define item mining speed: ";
			cin >> mining_speed;
		}
		//----------CRIT DAMAGE
		cout << "Define item crit damage: ";
		cin >> crit_damage;
		//----------CRIT CHANCE
		cout << "Define item crit chance: ";
		cin >> crit_chance;
		//----------MANA REQUIRED
		if (type == "magic") {
			cout << "Define item mana required: ";
			cin >> mana_req;
		}
		//----------LIFESTEAL
		cout << "Define item life steal: ";
		cin >> lifesteal;
		//----------MAX MANA
		cout << "Define item additive mana: ";
		cin >> max_mana;
		//---------- MANA REGEN
		cout << "Define item mana regen: ";
		cin >> mana_regen;
		//----------MAX PSYCHOSIS
		cout << "Define item additive psychosis: ";
		cin >> max_psychosis;
		//----------PSYCHOSIS USED
			cout << "Define item psychosis used (by giving an item the psychosis stat, each hit will take away this value from your psychosis bar, but increase the damage of your next hit by that psychosis amount x10): ";
			cin >> psychosis_used;
		//---------- HEALTH
		cout << "Define item health: ";
		cin >> health;
		//---------- REGEN
		cout << "Define item hp regen: ";
		cin >> hp_regen;
		//---------- DEFENSE
		cout << "Define item defense: ";
		cin >> defense;
		//---------- DAMAGE REDUCTION
		if (type == "shield") {
			cout << "Define shield damage reduction (from 1 to 100): ";
			cin >> damage_reduction;
		}
		//---------- DODGE CHANCE
		cout << "Define item dodge chance: ";
		cin >> dodge_chance;
		//---------- KNOCKBACK RESISTANCE
		cout << "Define item knockback resistance (FROM 1 to 100): ";
		cin >> knockback_resistance;
		//---------- MOVEMENT SPEED
		cout << "Define item movement speed (1.0 is QUITE REALLY FAST): ";
		cin >> movement_speed;
		if (movement_speed > 2.0) movement_speed = 2.0;
		//---------- LUCK
		cout << "Define item luck: ";
		cin >> luck;
	}
	//--------------------- ABILITY LINES
	int lore_lines;
	cout << "Define item ability lines: ";
	cin >> lore_lines;
	//--------------------- SELL PRICE
	int sell_price;
	cout << "Define item sell price: ";
	cin >> sell_price;
  //--------------------- DURABILITY
  if(type!="accessory"||type!="material"){
	cout << "Define item durability: ";
	cin >> durability;}
	//--------------------- CUSTOM MODEL DATA
	int custom_model_data;
	cout << "Define item custom model data: ";
	cin >> custom_model_data;
	cout << "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n";
	// -----------------------------------------------GENERATE
	cout << "{\"pools\":[{\"rolls\":1,\"entries\":[{\"type\":\"minecraft:item\",\"name\":\"minecraft:" << item <<"\",\"functions\":[{\"function\":\"minecraft:set_nbt\",\"tag\":\"";
	cout << "{Unbreakable:1b,HideFlags:127";
	if (type == "tool") cout << ",Enchantments:[{id:\\\"minecraft:efficiency\\\",lvl:100s}],CanDestroy:[\\\"#map:tool_breakable/" << tool_type << "\\\"]";
	cout <<",base:{type:\\\"" << type << "\\\"," << "id:\\\"" << name << "\\\","; // type
	if (slot!="NULL") {
		cout << "inv_stats:1b,";
	}
	cout << "\\\"Rarity\\\":\\\"" << rarity << "\\\","; // rarity
  if(durability!=0){ // DURABILITY
    cout<<"Durability:{max:"<<durability<<"},";
  }
	if (lore_lines > 0) { // ability
		cout << "Ability:[";
		for (int i = 1; i <= lore_lines; i++) cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore." << name << ".ability." << i << "\\\",\\\"italic\\\":false,\\\"color\\\":\\\"white\\\"}',";
		cout << "],";
	}
	if (sell_price > 0) cout << "SellPrice:" << sell_price << ",";
	cout << "custom_item:1b,";
	//custom name tag
	cout << "Name:'{\\\"translate\\\":\\\"item." << using_nspace << "." << name << "\\\",\\\"italic\\\":false,\\\"color\\\":\\\""; // display:name
	// display:rarity
	if (rarity == "common") cout << "white";
	else if (rarity == "uncommon") cout << "#569CFF";
	else if (rarity == "rare") cout << "#84FFA5";
	else if (rarity == "epic") cout << "#FFFB2D";
	else if (rarity == "legendary") cout << "#C40A44";
	else if (rarity == "mystic") cout << "#7F006E";
	else if (rarity == "special") cout << "#FF0000";
	cout << "\\\"}'";
	// ----------------------------------------  ACCESSORY TAG
	if (type == "accessory") {
		cout << ",AccessoryAbility:[";
		for (int n = 0; n < i-1; n++) {
			cout << "{id:\\\"" << accessory_ids[n] << "\\\"},";
		}
		cout << "]";
	}
	// STATS TAG
	if (type != "material") {
		cout << ",stats:{";
		if (damage != 0) cout << "damage: " << damage << ",";
		if (attack_speed != 0) cout << "attack_speed: " << attack_speed << ",";
		if (arrow_speed != 0) cout << "arrow_speed: " << arrow_speed << ",";
		if (crit_chance != 0) cout << "crit_chance: " << crit_chance << ",";
		if (crit_damage != 0) cout << "crit_damage: " << crit_damage << ",";
		if (mana_req != 0) cout << "mana_req: " << mana_req << ",";
		if (lifesteal != 0) cout << "lifesteal: " << lifesteal << ",";
		if (max_mana != 0) cout << "max_mana: " << max_mana << ",";
		if (mana_regen != 0) cout << "mana_regen: " << mana_regen << ",";
		if (max_psychosis != 0) cout << "max_psychosis: " << max_psychosis << ",";
		if (psychosis_used != 0) cout << "psychosis_used: " << psychosis_used << ",";
		if (health != 0) cout << "health: " << health << ",";
		if (defense != 0) cout << "defense: " << defense << ",";
		if (dodge_chance != 0) cout << "dodge_chance: " << dodge_chance << ",";
		if (knockback_resistance != 0) cout << "knockback_resistance: " << knockback_resistance << ",";
		if (movement_speed != 0) cout << "movement_speed: " << movement_speed << ",";
		if (luck != 0) cout << "luck: " << luck << ",";
		if (hp_regen != 0) cout << "hp_regen: " << hp_regen;
		if (mining_speed != 0) cout << "mining_speed: " << mining_speed;
		if (damage_reduction != 0) cout << "damage_reduction: " << damage_reduction;
		cout << "}";
	}
	if (sell_price > 0) cout << ",sell_price:" << sell_price;
	if (level_req > 0) cout << ",level_req:" << level_req;

	cout << "},";
	//custom item name
	cout << "display:{Name:'{\\\"translate\\\":\\\"item." << using_nspace << "." << name << "\\\",\\\"italic\\\":false,\\\"color\\\":\\\""; // display:name
	// display:rarity
	if (rarity == "common") cout << "white";
	else if (rarity == "uncommon") cout << "#569CFF";
	else if (rarity == "rare") cout << "#84FFA5";
	else if (rarity == "epic") cout << "#FFFB2D";
	else if (rarity == "legendary") cout << "#C40A44";
	else if (rarity == "mystic") cout << "#7F006E";
	else if (rarity == "special") cout << "#FF0000";
	cout << "\\\"}', Lore : [";
	//---------------------------------------
	if (type !="material") {
		// display:damage
		if (damage != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.damage\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (damage > 0) cout << "+"; cout << damage << "\\\",\\\"color\\\":\\\"red\\\"}]}',";
		}
		// display: mana required
		if (mana_req != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.mana_req\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (mana_req > 0) cout << "+"; cout << mana_req << "\\\",\\\"color\\\":\\\"aqua\\\"}]}',";
		}
		// display:attack speed
		if (attack_speed != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.attack_speed\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (attack_speed > 0) cout << "+"; cout << attack_speed << "\\\",\\\"color\\\":\\\"yellow\\\"}]}',";
		}
		// display:arrow speed
		if (arrow_speed != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.arrow_speed\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (arrow_speed > 0) cout << "+"; cout << arrow_speed << "\\\",\\\"color\\\":\\\"yellow\\\"}]}',";
		}
		// display: crit chance
		if (crit_chance != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.crit_chance\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (crit_chance > 0) cout << "+"; cout << crit_chance << "\\\",\\\"color\\\":\\\"gold\\\"}]}',";
		}
		// display:crit damage
		if (crit_damage != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.crit_damage\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (crit_damage > 0) cout << "+"; cout << crit_damage << "\\\",\\\"color\\\":\\\"gold\\\"}]}',";
		}
		// display:lifesteal
		if (lifesteal != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.lifesteal\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (lifesteal > 0) cout << "+"; cout << lifesteal << "\\\",\\\"color\\\":\\\"dark_red\\\"}]}',";
		}
		// display:mining speed
		if (mining_speed != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.mining_speed\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (mining_speed > 0) cout << "+"; cout << mining_speed << "\\\",\\\"color\\\":\\\"yellow\\\"}]}',";
		}
		// display:psychosis req
		if (psychosis_used != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.psychosis_used\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (psychosis_used > 0) cout << "+"; cout << psychosis_used << "\\\",\\\"color\\\":\\\"light_purple\\\"}]}',";
		}
		// display: health 
		if (health != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.health\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (health > 0) cout << "+"; cout << health << "\\\",\\\"color\\\":\\\"green\\\"}]}',";
		}
		// display: hp regen 
		if (hp_regen != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.hp_regen\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (hp_regen > 0) cout << "+"; cout << hp_regen << "%" << "\\\",\\\"color\\\":\\\"green\\\"}]}',";
		}
		// display: defense 
		if (defense != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.defense\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (defense > 0) cout << "+"; cout << defense << "\\\",\\\"color\\\":\\\"green\\\"}]}',";
		}
		// display: damage_reduction 
		if (damage_reduction != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.damage_reduction\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (damage_reduction > 0) cout << "+"; cout << damage_reduction << "\\\",\\\"color\\\":\\\"green\\\"}]}',";
		}
		// display: max mana 
		if (max_mana != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.max_mana\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (max_mana > 0) cout << "+"; cout << max_mana << "\\\",\\\"color\\\":\\\"aqua\\\"}]}',";
		}
		// display: mana_regen 
		if (mana_regen != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.mana_regen\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (mana_regen > 0) cout << "+"; cout << mana_regen << "%" << "\\\",\\\"color\\\":\\\"aqua\\\"}]}',";
		}
		// display: max psychosis 
		if (max_psychosis != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.max_psychosis\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (max_psychosis > 0) cout << "+"; cout << max_psychosis << "\\\",\\\"color\\\":\\\"light_purple\\\"}]}',";
		}
		// display: dodge chance 
		if (dodge_chance != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.dodge_chance\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (dodge_chance > 0) cout << "+"; cout << dodge_chance << "%" << "\\\",\\\"color\\\":\\\"white\\\"}]}',";
		}
		// display: knockback resistance
		if (knockback_resistance != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.knockback_resistance\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (knockback_resistance > 0) cout << "+"; cout << knockback_resistance <<"%" << "\\\",\\\"color\\\":\\\"dark_purple\\\"}]}',";
		}
		// display: movement_speed
		if (movement_speed != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.movement_speed\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (movement_speed > 0) cout << "+"; cout << movement_speed << "\\\",\\\"color\\\":\\\"yellow\\\"}]}',";
		}
		// display: luck
		if (luck != 0) {
			cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore.luck\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\""; if (luck > 0) cout << "+"; cout << luck << "\\\",\\\"color\\\":\\\"dark_green\\\"}]}',";
		}
	}
	// display:ability
	if (lore_lines > 0) {
		cout << "'{\\\"text\\\":\\\"\\\"}',"; for (int i = 1; i <= lore_lines; i++) cout << "'{\\\"translate\\\":\\\"item." << using_nspace << ".lore." << name << ".ability." << i << "\\\",\\\"italic\\\":false,\\\"color\\\":\\\"white\\\"}',";
	}
	// display:sell price
	if (sell_price > 0) 
		if (level_req > 0) {
			cout << "'{\\\"text\\\":\\\"\\\"}','{\\\"translate\\\":\\\"item." << using_nspace << ".lore.level_required_and_sell_price\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\"" << level_req << "\\\",\\\"color\\\":\\\"blue\\\"},{\\\"text\\\":\\\"" << sell_price << "\\\",\\\"color\\\":\\\"white\\\"}]}'";
		}
		else {
		cout << "'{\\\"text\\\":\\\"\\\"}','{\\\"translate\\\":\\\"item." << using_nspace << ".lore.sell_price\\\",\\\"italic\\\":false,\\\"color\\\":\\\"gray\\\",\\\"with\\\":[{\\\"text\\\":\\\"" << sell_price << "\\\",\\\"color\\\":\\\"white\\\"}]}'";
	}
	cout << "]}";
	cout << ", AttributeModifiers: [";
	if ((type != "material") && ((knockback_resistance > 0) || (luck > 0) || (attack_speed > 0) || (movement_speed > 0))) { // ATTRIBUTES
		if (type == "armor") {
			if (slot == "head") {
				if (knockback_resistance > 0) cout << "{AttributeName:\\\"generic.knockback_resistance\\\", Name : \\\"generic.knockback_resistance\\\", Amount :" << knockback_resistance/100 << ",Operation:0,UUID:[I;430604709,1994146689,-1805554892,-1665295913],Slot:\\\"head\\\"},";
				if (luck > 0) cout << "{AttributeName:\\\"generic.luck\\\", Name : \\\"generic.luck\\\", Amount :" << luck << ",Operation:0,UUID:[I;-1500439110,905462168,-2087954925,-1657792482],Slot:\\\"head\\\"},";
				if (attack_speed > 0) cout << "{AttributeName:\\\"generic.attack_speed\\\", Name : \\\"generic.attack_speed\\\", Amount :" << attack_speed << ",Operation:0,UUID:[I;420604709,1994146689,-1805554892,-1665295913],Slot:\\\"head\\\"},";
				if (movement_speed > 0) cout << "{AttributeName:\\\"generic.movement_speed\\\", Name : \\\"generic.movement_speed\\\", Amount :" << movement_speed << ",Operation:0,UUID:[I;430634709,1994146689,-1805554892,-1665295912],Slot:\\\"head\\\"},";
			}
			else if (slot == "chest") {
				if (knockback_resistance > 0) cout << "{AttributeName:\\\"generic.knockback_resistance\\\", Name : \\\"generic.knockback_resistance\\\", Amount :" << knockback_resistance/100 << ",Operation:0,UUID:[I;430604709,1994146689,-1325554892,-1665295913],Slot:\\\"chest\\\"},";
				if (luck > 0) cout << "{AttributeName:\\\"generic.luck\\\", Name : \\\"generic.luck\\\", Amount :" << luck << ",Operation:0,UUID:[I;-1500439110,905462168,-2087954925,-1657792382],Slot:\\\"chest\\\"},";
				if (attack_speed > 0) cout << "{AttributeName:\\\"generic.attack_speed\\\", Name : \\\"generic.attack_speed\\\", Amount :" << attack_speed << ",Operation:0,UUID:[I;420604709,1994146689,-1805524892,-1665295913],Slot:\\\"chest\\\"},";
				if (movement_speed > 0) cout << "{AttributeName:\\\"generic.movement_speed\\\", Name : \\\"generic.movement_speed\\\", Amount :" << movement_speed << ",Operation:0,UUID:[I;430634709,1994142689,-1805554892,-1665295912],Slot:\\\"chest\\\"}";
			}
			else if (slot == "legs") {
				if (knockback_resistance > 0) cout << "{AttributeName:\\\"generic.knockback_resistance\\\", Name : \\\"generic.knockback_resistance\\\", Amount :" << knockback_resistance/100 << ",Operation:0,UUID:[I;430604702,1994246689,-1325554892,-1665295913],Slot:\\\"legs\\\"},";
				if (luck > 0) cout << "{AttributeName:\\\"generic.luck\\\", Name : \\\"generic.luck\\\", Amount :" << luck << ",Operation:0,UUID:[I;-1500439110,915462168,-2087954925,-1657792382],Slot:\\\"legs\\\"},";
				if (attack_speed > 0) cout << "{AttributeName:\\\"generic.attack_speed\\\", Name : \\\"generic.attack_speed\\\", Amount :" << attack_speed << ",Operation:0,UUID:[I;420604709,1994146689,-1805524892,-2665295913],Slot:\\\"legs\\\"},";
				if (movement_speed > 0) cout << "{AttributeName:\\\"generic.movement_speed\\\", Name : \\\"generic.movement_speed\\\", Amount :" << movement_speed << ",Operation:0,UUID:[I;430634709,1994142689,-1805554892,-1665295912],Slot:\\\"legs\\\"},";
			}
			else if (slot == "feet") {
				if (knockback_resistance > 0) cout << "{AttributeName:\\\"generic.knockback_resistance\\\", Name : \\\"generic.knockback_resistance\\\", Amount :" << knockback_resistance/100 << ",Operation:0,UUID:[I;430634702,1994246689,-1325554892,-1665295913],Slot:\\\"feet\\\"},";
				if (luck > 0) cout << "{AttributeName:\\\"generic.luck\\\", Name : \\\"generic.luck\\\", Amount :" << luck << ",Operation:0,UUID:[I;-1500439110,915462168,-2087954925,-1657592382],Slot:\\\"feet\\\"},";
				if (attack_speed > 0) cout << "{AttributeName:\\\"generic.attack_speed\\\", Name : \\\"generic.attack_speed\\\", Amount :" << attack_speed << ",Operation:0,UUID:[I;420604709,1994146689,-1803524892,-2665295913],Slot:\\\"feet\\\"},";
				if (movement_speed > 0) cout << "{AttributeName:\\\"generic.movement_speed\\\", Name : \\\"generic.movement_speed\\\", Amount :" << movement_speed << ",Operation:0,UUID:[I;430634709,1994142689,-1805554892,-1265295912],Slot:\\\"feet\\\"}";
			}
		}
		else if ((type == "melee") || (type == "ranged") || (type == "magic") || (type == "telekinetic")) {
			if (knockback_resistance > 0) cout << "{AttributeName:\\\"generic.knockback_resistance\\\", Name : \\\"generic.knockback_resistance\\\", Amount :" << knockback_resistance/100 << ",Operation:0,UUID:[I;430634702,1994246689,-1325554892,-1665295913],Slot:\\\"mainhand\\\"},";
			if (luck > 0) cout << "{AttributeName:\\\"generic.luck\\\", Name : \\\"generic.luck\\\", Amount :" << luck << ",Operation:0,UUID:[I;-1500439110,915462168,-2087954925,-1657592382],Slot:\\\"mainhand\\\"},";
			if (attack_speed > 0) cout << "{AttributeName:\\\"generic.attack_speed\\\", Name : \\\"generic.attack_speed\\\", Amount :" << attack_speed-4 << ",Operation:0,UUID:[I;420604709,1994146689,-1803524892,-262295913],Slot:\\\"mainhand\\\"},";
			if (movement_speed > 0) cout << "{AttributeName:\\\"generic.movement_speed\\\", Name : \\\"generic.movement_speed\\\", Amount :" << movement_speed << ",Operation:0,UUID:[I;430634709,1994142689,-1805554892,-1265295912],Slot:\\\"mainhand\\\"},";

			if (knockback_resistance > 0) cout << "{AttributeName:\\\"generic.knockback_resistance\\\", Name : \\\"generic.knockback_resistance\\\", Amount :" << knockback_resistance/100 << ",Operation:0,UUID:[I;430614702,1924246689,-1315554892,-1664295913],Slot:\\\"offhand\\\"},";
			if (luck > 0) cout << "{AttributeName:\\\"generic.luck\\\", Name : \\\"generic.luck\\\", Amount :" << luck << ",Operation:0,UUID:[I;-1500439110,915162168,-2087954925,-1657292382],Slot:\\\"offhand\\\"},";
			if (attack_speed > 0) cout << "{AttributeName:\\\"generic.attack_speed\\\", Name : \\\"generic.attack_speed\\\", Amount :" << attack_speed-4 << ",Operation:0,UUID:[I;420604709,1994146689,-1803524892,-2124295913],Slot:\\\"offhand\\\"},";
			if (movement_speed > 0) cout << "{AttributeName:\\\"generic.movement_speed\\\", Name : \\\"generic.movement_speed\\\", Amount :" << movement_speed << ",Operation:0,UUID:[I;430634709,1994142689,-1805554292,-1265295912],Slot:\\\"offhand\\\"},";

			if (type != "melee") cout << "{AttributeName:\\\"generic.attack_speed\\\",Name:\\\"generic.attack_speed\\\",Amount:1239,Operation:0,UUID:[I;-534525870,961402109,-1771270194,-21721046],Slot:\\\"mainhand\\\"},{AttributeName:\\\"generic.attack_speed\\\",Name:\\\"generic.attack_speed\\\",Amount:1239,Operation:0,UUID:[I;-534523870,961402109,-1771270194,-21721046],Slot:\\\"offhand\\\"}";

		}
	}
	cout << "]";
	if (custom_model_data > 0) cout << ",CustomModelData: " << custom_model_data;
	cout << "}\"}]}]}]}";
	cout << "\n\n\n\n\n\n";
	return(0);
}