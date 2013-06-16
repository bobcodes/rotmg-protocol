package com.company.assembleegameclient.objects
{
   import __AS3__.vec.Vector;
   import flash.utils.Dictionary;
   import zijyq.Zoq;
   import flash.utils.getDefinitionByName;
   import flash.display.BitmapData;
   import com.company.util.AssetLibrary;
   import com.company.assembleegameclient.util.TextureRedrawer;
   import pilage.Tope;
   import pilage.Patale;
   import com.company.util.ConversionUtil;
   import aaa.StatData;


   public class ObjectLibrary extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function ObjectLibrary() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public static var mucaky:Vekabime = new Vekabime();

      public static const cilyl:String = "lofiObj3";

      public static const fyse:int = 255;

      public static var vemociged:Vector.<XML> = new Vector.<XML>();

      public static var vysutozir:Vector.<XML> = new Vector.<XML>();

      public static var vidyhoqaq:Dictionary = new Dictionary();

      public static const zupucuwum:Dictionary = new Dictionary();

      public static const ziq:Dictionary = new Dictionary();

      public static const nezuwy:Dictionary = new Dictionary();

      public static const kipanudad:Dictionary = new Dictionary();

      public static const fyri:Dictionary = new Dictionary();

      public static const medyqi:Dictionary = new Dictionary();

      public static const homisar:Dictionary = new Dictionary();

      public static const zuh:Dictionary = new Dictionary();

      public static const metocu:ObjectProperties = new ObjectProperties(null);

      public static const nih:Object = {
                                             ArenaGuard:ArenaGuard,
                                             ArenaPortal:ArenaPortal,
                                             CaveWall:CaveWall,
                                             Character:Character,
                                             CharacterChanger:CharacterChanger,
                                             ClosedGiftChest:ClosedGiftChest,
                                             ClosedVaultChest:ClosedVaultChest,
                                             ConnectedWall:ConnectedWall,
                                             Container:Container,
                                             DoubleWall:DoubleWall,
                                             GameObject:GameObject,
                                             GuildBoard:GuildBoard,
                                             GuildChronicle:GuildChronicle,
                                             GuildHallPortal:GuildHallPortal,
                                             GuildMerchant:GuildMerchant,
                                             GuildRegister:GuildRegister,
                                             Merchant:Merchant,
                                             MoneyChanger:MoneyChanger,
                                             NameChanger:NameChanger,
                                             ReskinVendor:ReskinVendor,
                                             OneWayContainer:OneWayContainer,
                                             Player:Player,
                                             Portal:Portal,
                                             Projectile:Projectile,
                                             Sign:Sign,
                                             SpiderWeb:SpiderWeb,
                                             Stalagmite:Stalagmite,
                                             Wall:Wall,
                                             Pet:Pet,
                                             PetUpgrader:PetUpgrader,
                                             YardUpgrader:YardUpgrader
                                             };

      public static function weniti(param1:XML) : void {
         var [OFS3]_loc10_:* = [/OFS]false;
         var [OFS5]_loc11_:* = [/OFS]true;
         var [OFS12]_loc2_:XML = [/OFS][OFS9]null[/OFS];
         var [OFS15]_loc3_:String = [/OFS][OFS13]null[/OFS];
         var [OFS18]_loc4_:String = [/OFS][OFS16]null[/OFS];
         var [OFS22]_loc5_:* = [/OFS][OFS20]0[/OFS];
         var [OFS25]_loc6_:* = [/OFS]false;
         var [OFS29]_loc7_:* = [/OFS][OFS27]0[/OFS];
         for each (_loc2_ in [OFS35]param1[/OFS].[OFS36]Object[/OFS])
         {
            [OFS65]_loc3_=[/OFS][OFS61]String[/OFS][OFS61]([/OFS][OFS57]_loc2_[/OFS].[OFS58]@id[/OFS][OFS61])[/OFS];
            [OFS68]_loc4_=[/OFS][OFS66]_loc3_[/OFS];
            if([OFS70]_loc2_[/OFS].[OFS74]hasOwnProperty[/OFS][OFS74]([/OFS][OFS71]"DisplayId"[/OFS][OFS74])[/OFS])
            {
               [OFS88]_loc4_=[/OFS][OFS82]_loc2_[/OFS].[OFS83]DisplayId[/OFS];
            }
            if([OFS90]_loc2_[/OFS].[OFS94]hasOwnProperty[/OFS][OFS94]([/OFS][OFS91]"Group"[/OFS][OFS94])[/OFS])
            {
               if([OFS102]_loc2_[/OFS].[OFS103]Group[/OFS][OFS110]==[/OFS][OFS107]"Hexable"[/OFS])
               {
                  [OFS114]vysutozir[/OFS].[OFS118]push[/OFS][OFS118]([/OFS][OFS117]_loc2_[/OFS][OFS118])[/OFS];
               }
            }
            [OFS131]_loc5_=[/OFS][OFS127]int[/OFS][OFS127]([/OFS][OFS123]_loc2_[/OFS].[OFS124]@type[/OFS][OFS127])[/OFS];
            if(([OFS133]_loc2_[/OFS].[OFS137]hasOwnProperty[/OFS][OFS137]([/OFS][OFS134]"PetBehavior"[/OFS][OFS137])[/OFS])||([OFS148]_loc2_[/OFS].[OFS152]hasOwnProperty[/OFS][OFS152]([/OFS][OFS149]"PetAbility"[/OFS][OFS152])[/OFS]))
            {
               [OFS161]zuh[/OFS][[OFS164]_loc5_[/OFS]][OFS167]=[/OFS][OFS166]_loc2_[/OFS];
            }
            else
            {
               [OFS174]zupucuwum[/OFS][[OFS177]_loc5_[/OFS]][OFS187]=[/OFS][OFS183]new [/OFS][OFS183]ObjectProperties[/OFS][OFS183]([/OFS][OFS182]_loc2_[/OFS][OFS183])[/OFS];
               [OFS190]ziq[/OFS][[OFS193]_loc5_[/OFS]][OFS196]=[/OFS][OFS195]_loc2_[/OFS];
               [OFS199]nezuwy[/OFS][[OFS202]_loc3_[/OFS]][OFS205]=[/OFS][OFS203]_loc5_[/OFS];
               [OFS208]kipanudad[/OFS][[OFS211]_loc5_[/OFS]][OFS215]=[/OFS][OFS213]_loc4_[/OFS];
               if([OFS224]String[/OFS][OFS224]([/OFS][OFS220]_loc2_[/OFS].[OFS221]Class[/OFS][OFS224])[/OFS][OFS230]==[/OFS][OFS227]"Player"[/OFS])
               {
                  [OFS234]vidyhoqaq[/OFS][[OFS237]_loc5_[/OFS]][OFS256]=[/OFS][OFS245]String[/OFS][OFS245]([/OFS][OFS241]_loc2_[/OFS].[OFS242]@id[/OFS][OFS245])[/OFS].[OFS252]substr[/OFS][OFS252]([/OFS][OFS248]0[/OFS][OFS252],[/OFS][OFS250]2[/OFS][OFS252])[/OFS];
                  [OFS260]_loc6_=[/OFS]false;
                  [OFS264]_loc7_=[/OFS][OFS262]0[/OFS];
                  while([OFS307]_loc7_[/OFS][OFS314]<[/OFS][OFS309]vemociged[/OFS].[OFS312]length[/OFS])
                  {
                     if([OFS284]int[/OFS][OFS284]([/OFS][OFS273]vemociged[/OFS][[OFS276]_loc7_[/OFS]].[OFS281]@type[/OFS][OFS284])[/OFS][OFS289]==[/OFS][OFS287]_loc5_[/OFS])
                     {
                        [OFS293]vemociged[/OFS][[OFS296]_loc7_[/OFS]][OFS299]=[/OFS][OFS298]_loc2_[/OFS];
                        [OFS303]_loc6_=[/OFS]true;
                     }
                     _loc7_[OFS305]++[/OFS];
                  }
                  if(![OFS318]_loc6_[/OFS])
                  {
                     [OFS324]vemociged[/OFS].[OFS328]push[/OFS][OFS328]([/OFS][OFS327]_loc2_[/OFS][OFS328])[/OFS];
                  }
               }
               [OFS331]fyri[/OFS][[OFS334]_loc5_[/OFS]][OFS344]=[/OFS][OFS336]mucaky[/OFS].[OFS340]create[/OFS][OFS340]([/OFS][OFS339]_loc2_[/OFS][OFS340])[/OFS];
               if([OFS347]_loc2_[/OFS].[OFS351]hasOwnProperty[/OFS][OFS351]([/OFS][OFS348]"Top"[/OFS][OFS351])[/OFS])
               {
                  [OFS359]medyqi[/OFS][[OFS362]_loc5_[/OFS]][OFS381]=[/OFS][OFS364]mucaky[/OFS].[OFS377]create[/OFS][OFS377]([/OFS][OFS374]XML[/OFS][OFS374]([/OFS][OFS369]_loc2_[/OFS].[OFS370]Top[/OFS][OFS374])[/OFS][OFS377])[/OFS];
               }
               if([OFS384]_loc2_[/OFS].[OFS388]hasOwnProperty[/OFS][OFS388]([/OFS][OFS385]"Animation"[/OFS][OFS388])[/OFS])
               {
                  [OFS396]homisar[/OFS][[OFS399]_loc5_[/OFS]][OFS409]=[/OFS][OFS405]new [/OFS][OFS405]Zoq[/OFS][OFS405]([/OFS][OFS404]_loc2_[/OFS][OFS405])[/OFS];
               }
            }
         }
         [OFS423]return[/OFS];
      }

      public static function ryqovol(param1:int) : String {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = ziq[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return String(_loc2_.@id);
      }

      public static function tina(param1:String) : ObjectProperties {
         var _loc2_:int = nezuwy[param1];
         return zupucuwum[_loc2_];
      }

      public static function jesycegoc(param1:String) : XML {
         var _loc2_:int = nezuwy[param1];
         return ziq[_loc2_];
      }

      public static function hobake(param1:int) : GameObject {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = ziq[param1];
         var _loc3_:String = _loc2_.Class;
         var _loc4_:Class = (nih[_loc3_])||(rorug(_loc3_));
         return new _loc4_(_loc2_);
      }

      private static function rorug(param1:String) : Class {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:String = "com.company.assembleegameclient.objects."+param1;
         return getDefinitionByName(_loc2_) as Class;
      }

      public static function getTextureFromType(param1:int) : BitmapData {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sep = fyri[param1];
         if(_loc2_==null)
         {
            return null;
         }
         return _loc2_.getTexture();
      }

      public static function getBitmapData(param1:int) : BitmapData {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Sep = fyri[param1];
         var _loc3_:BitmapData = _loc2_?_loc2_.getTexture():null;
         if(_loc3_)
         {
            return _loc3_;
         }
         return AssetLibrary.tem(cilyl,fyse);
      }

      public static function getRedrawnTextureFromType(param1:int, param2:int, param3:Boolean, param4:Boolean=true, param5:Number=5) : BitmapData {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc6_:BitmapData = getBitmapData(param1);
         var _loc7_:Sep = fyri[param1];
         var _loc8_:BitmapData = _loc7_?_loc7_.mask_:null;
         if(_loc8_==null)
         {
            return TextureRedrawer.redraw(_loc6_,param2,param3,0,0,param4,param5);
         }
         var _loc9_:XML = ziq[param1];
         var _loc10_:int = _loc9_.hasOwnProperty("Tex1")?int(_loc9_.Tex1):0;
         var _loc11_:int = [OFS124]_loc9_[/OFS].[OFS129]hasOwnProperty[/OFS][OFS129]([/OFS]"Tex2"[OFS129])[/OFS]?[OFS144]int[/OFS][OFS144]([/OFS][OFS139]_loc9_[/OFS].[OFS141]Tex2[/OFS][OFS144])[/OFS]:[OFS152]0[/OFS];
         [OFS178]_loc6_=[/OFS][OFS157]TextureRedrawer[/OFS].[OFS172]resize[/OFS][OFS172]([/OFS][OFS160]_loc6_[/OFS][OFS172],[/OFS][OFS162]_loc8_[/OFS][OFS172],[/OFS][OFS164]param2[/OFS][OFS172],[/OFS][OFS165]param3[/OFS][OFS172],[/OFS][OFS166]_loc10_[/OFS][OFS172],[/OFS][OFS168]_loc11_[/OFS][OFS172],[/OFS][OFS170]param5[/OFS][OFS172])[/OFS];
         [OFS195]_loc6_=[/OFS][OFS180]TextureRedrawer[/OFS].[OFS188]outlineGlow[/OFS][OFS188]([/OFS][OFS183]_loc6_[/OFS][OFS188],[/OFS][OFS185]0[/OFS][OFS188],[/OFS][OFS185]0[/OFS][OFS188])[/OFS];
         [OFS197]return [/OFS][OFS194]_loc6_[/OFS];
      }

      public static function dehiwehab(param1:int) : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:XML = ziq[param1];
         if(!_loc2_.hasOwnProperty("Size"))
         {
            return 100;
         }
         return int(_loc2_.Size);
      }

      public static function qivoti(param1:int) : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = ziq[param1];
         if(!_loc2_.hasOwnProperty("SlotType"))
         {
            return -1;
         }
         return int(_loc2_.SlotType);
      }

      public static function godar(param1:int, param2:Player) : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(param1==Tope.puheqah)
         {
            return false;
         }
         var _loc3_:XML = ziq[param1];
         var _loc4_:int = int(_loc3_.SlotType.toString());
         var _loc5_:uint = 0;
         while(_loc5_<Patale.hunyrigy)
         {
            if(param2.bizysuhy[_loc5_]==_loc4_)
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }

      public static function tuni(param1:int, param2:Player) : int {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:XML = null;
         var _loc4_:* = 0;
         var _loc5_:uint = 0;
         if(param1!=Tope.puheqah)
         {
            _loc3_=ziq[param1];
            _loc4_=int(_loc3_.SlotType);
            _loc5_=0;
            while(_loc5_<Patale.hunyrigy)
            {
               if(param2.bizysuhy[_loc5_]==_loc4_)
               {
                  return _loc5_;
               }
               _loc5_++;
            }
         }
         return -1;
      }

      public static function racig(param1:int, param2:Player) : Boolean {
         var _loc6_:* = true;
         var _loc7_:* = false;
         if(param2==null)
         {
            return true;
         }
         var _loc3_:XML = ziq[param1];
         if(_loc3_==null||!_loc3_.hasOwnProperty("SlotType"))
         {
            return false;
         }
         var _loc4_:int = _loc3_.SlotType;
         if(_loc4_==Tope.rajadotas||_loc4_==Tope.wevane)
         {
            return true;
         }
         var _loc5_:* = 0;
         while(_loc5_<param2.bizysuhy.length)
         {
            if(param2.bizysuhy[_loc5_]==_loc4_)
            {
               return true;
            }
            _loc5_++;
         }
         return false;
      }

      public static function mocymuge(param1:int) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:XML = ziq[param1];
         return !(_loc2_==null)&&(_loc2_.hasOwnProperty("Soulbound"));
      }

      public static function usableBy(param1:int) : Vector.<String> {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc5_:XML = null;
         var _loc6_:Vector.<int> = null;
         var _loc7_:* = 0;
         var _loc2_:XML = ziq[param1];
         if(_loc2_==null||!_loc2_.hasOwnProperty("SlotType"))
         {
            return null;
         }
         var _loc3_:int = _loc2_.SlotType;
         if(_loc3_==Tope.rajadotas||_loc3_==Tope.fajyjubo||_loc3_==Tope.wevane)
         {
            return null;
         }
         var _loc4_:Vector.<String> = new Vector.<String>();
         for each (_loc5_ in vemociged)
         {
            _loc6_=ConversionUtil.zyhelokub(_loc5_.SlotTypes);
            _loc7_=0;
            while(_loc7_<_loc6_.length)
            {
               if(_loc6_[_loc7_]==_loc3_)
               {
                  _loc4_.push(kipanudad[int(_loc5_.@type)]);
                  break;
               }
               _loc7_++;
            }
         }
         return _loc4_;
      }

      public static function wak(param1:int, param2:Player) : Boolean {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:XML = null;
         if(param2==null)
         {
            return true;
         }
         var _loc3_:XML = ziq[param1];
         for each (_loc4_ in _loc3_.EquipRequirement)
         {
            if(!buzogiqyj(_loc4_,param2))
            {
               return false;
            }
         }
         return true;
      }

      public static function buzogiqyj(param1:XML, param2:Player) : Boolean {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         if(param1.toString()=="Stat")
         {
            _loc3_=int(param1.@value);
            switch(int(param1.@stat))
            {
               case StatData.jemoni:
                  return param2.kukigim>=_loc3_;
               case StatData.lasijo:
                  return param2.nivuj>=_loc3_;
               case StatData.sitow:
                  return param2.kanifivi>=_loc3_;
               case StatData.cehysufuw:
                  return param2.ryhefidu>=_loc3_;
               case StatData.pomobudi:
                  return param2.senajawec>=_loc3_;
               case StatData.hyqolob:
                  return param2.speed_>=_loc3_;
               case StatData.tebuqa:
                  return param2.bybi>=_loc3_;
               case StatData.zuzyt:
                  return param2.zes>=_loc3_;
               case StatData.nywowudoz:
                  return param2.zaqudufa>=_loc3_;
            }
         }
         return false;
      }

      public static function zas(param1:int) : XML {
         return zuh[param1];
      }
   }

}