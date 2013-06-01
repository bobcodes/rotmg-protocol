package pigeguwo
{
[CLASS1627]   import vacosu.Tohu;
   import vacosu.GeneralProjectileComparison;
   import vacosu.Tatobo;
   import kuzycyw.Mygisyqoc;
   import vacosu.Vifiv;
   import vacosu.Huc;
   import vacosu.Tatibyhac;
   import vacosu.Byhusi;
   import vacosu.Qoty;
   import vacosu.Gecewu;
   import vacosu.Covalofac;
   import vacosu.PoisonComparison;
   import vacosu.Mizila;
   import vacosu.Fodopovyt;
   import vacosu.Wyz;
   import vacosu.Tacidyq;
   import vacosu.Rec;


   public class Dumaku extends Object
   {
      public function Dumaku() {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         var _loc1_:GeneralProjectileComparison = new GeneralProjectileComparison();
         var _loc2_:Tatobo = new Tatobo();
         this.hash={};
         this.hash[Mygisyqoc.leba]=_loc1_;
         this.hash[Mygisyqoc.cebawakag]=_loc1_;
         this.hash[Mygisyqoc.doqelyk]=_loc1_;
         this.hash[Mygisyqoc.zow]=new Vifiv();
         this.hash[Mygisyqoc.wefagyf]=new Huc();
         this.hash[Mygisyqoc.mohi]=_loc2_;
         this.hash[Mygisyqoc.natofe]=_loc2_;
         this.hash[Mygisyqoc.jevesor]=_loc1_;
         this.hash[Mygisyqoc.gewujil]=new Tatibyhac();
         this.hash[Mygisyqoc.dore]=new Byhusi();
         this.hash[Mygisyqoc.bokuvihig]=new Qoty();
         this.hash[Mygisyqoc.godupek]=_loc2_;
         this.hash[Mygisyqoc.wepotat]=new Gecewu();
         this.hash[Mygisyqoc.bisibizo]=new Covalofac();
         this.hash[Mygisyqoc.semyw]=_loc1_;
         this.hash[Mygisyqoc.moj]=new PoisonComparison();
         this.hash[Mygisyqoc.hujipaja]=new Mizila();
         this.hash[Mygisyqoc.warul]=new Fodopovyt();
         this.hash[Mygisyqoc.cuc]=new Wyz();
         this.hash[Mygisyqoc.sygi]=new Tacidyq();
         this.hash[Mygisyqoc.pizyhopa]=new Rec();
         this.hash[Mygisyqoc.vym]=_loc1_;
         this.hash[Mygisyqoc.giboc]=_loc1_;
         return;
      }

      private var hash:Object;

      public function beqydi(param1:XML, param2:XML) : Lyda {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:int = int(param1.SlotType);
         var _loc4_:Tohu = this.hash[_loc3_];
         var _loc5_:Lyda = new Lyda();
         if(_loc4_!=null)
         {
            _loc4_.zedonog(param1,param2);
            _loc5_.febup=_loc4_.lupizavyc;
            _loc5_.vase=_loc4_.vase;
         }
         return _loc5_;
      }
   }
[/CLASS]
}