package tuma
{
   import fulaw.Vihekivuc;
   import fulaw.Jimi;
   import fulaw.Dasin;
   import aaa.rotmg.i18n.I18nKeys;
   import kabam.rotmg.assets.model.Jyzirilof;
   import fulaw.Wuduler;
   import fulaw.Guquv;
   import fulaw.Gucobo;
   import __AS3__.vec.Vector;


   public class Reb extends Object
   {
      public function Reb() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var data:XML;

      public var classes:Vihekivuc;

      public function execute() : void {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:XML = null;
         var _loc1_:XMLList = this.data.Object;
         for each (_loc2_ in _loc1_)
         {
            this.jutol(_loc2_);
         }
         return;
      }

      private function jutol(param1:XML) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:int = param1.@type;
         var _loc3_:Jimi = this.classes.lyt(_loc2_);
         this.talowuj(_loc3_,param1);
         return;
      }

      private function talowuj(param1:Jimi, param2:XML) : void {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:XML = null;
         param1.id=param2.@type;
         param1.name=param2.DisplayId;
         param1.description=param2.Description;
         param1.buvipy=param2.HitSound;
         param1.mamanuw=param2.DeathSound;
         param1.boru=param2.BloodProb;
         param1.jonicez=this.vufim(param2.SlotTypes);
         param1.zyneqah=this.vufim(param2.Equipment);
         param1.bovo=this.racabysec(param2,"MaxHitPoints");
         param1.neniq=this.racabysec(param2,"MaxMagicPoints");
         param1.attack=this.racabysec(param2,"Attack");
         param1.defense=this.racabysec(param2,"Defense");
         param1.speed=this.racabysec(param2,"Speed");
         param1.dexterity=this.racabysec(param2,"Dexterity");
         param1.duzes=this.racabysec(param2,"HpRegen");
         param1.jonavib=this.racabysec(param2,"MpRegen");
         param1.unlockCost=param2.UnlockCost;
         for each (_loc3_ in param2.UnlockLevel)
         {
            param1.lakegaci.push(this.wybobet(_loc3_));
         }
         param1.socucu.lyloquruv(this.dicocuhet(param2),true);
         return;
      }

      private function dicocuhet(param1:XML) : Dasin {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:String = param1.AnimatedTexture.File;
         var _loc3_:int = param1.AnimatedTexture.Index;
         var _loc4_:Dasin = new Dasin();
         _loc4_.id=0;
         _loc4_.name=I18nKeys.zikam;
         _loc4_.ladewavaq=new Jyzirilof(_loc2_,_loc3_);
         _loc4_.setState(Wuduler.OWNED);
         _loc4_.piloni(true);
         return _loc4_;
      }

      private function wybobet(param1:XML) : Guquv {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Guquv = new Guquv();
         _loc2_.level=param1.@level;
         _loc2_.character=this.classes.lyt(param1.@type);
         return _loc2_;
      }

      private function racabysec(param1:XML, param2:String) : Gucobo {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc4_:XML = null;
         var _loc5_:XML = null;
         var _loc6_:Gucobo = null;
         var _loc3_:XML = param1[param2][0];
         for each (_loc5_ in param1.LevelIncrease)
         {
            if(_loc5_.text()==param2)
            {
               _loc4_=_loc5_;
            }
         }
         _loc6_=new Gucobo();
         _loc6_.sizozij=int(_loc3_.toString());
         _loc6_.max=_loc3_.@max;
         _loc6_.pamazazyw=_loc4_?_loc4_.@min:0;
         _loc6_.jik=_loc4_?_loc4_.@max:0;
         return _loc6_;
      }

      private function vufim(param1:String) : Vector.<int> {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Array = param1.split(",");
         var _loc3_:int = _loc2_.length;
         var _loc4_:Vector.<int> = new Vector.<int>(_loc3_,true);
         var _loc5_:* = 0;
         while(_loc5_<_loc3_)
         {
            _loc4_[_loc5_]=int(_loc2_[_loc5_]);
            _loc5_++;
         }
         return _loc4_;
      }
   }

}