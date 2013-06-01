package vacosu
{
[CLASS1805]   import totuhare.Qebar;
   import haqakel.Kefyfa;
   import totuhare.AppendingLineBuilder;


   public class Tatibyhac extends Tohu
   {
      public function Tatibyhac() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         lupizavyc=new AppendingLineBuilder();
         return;
      }

      private var itemXML:XML;

      private var curItemXML:XML;

      private var fufo:XML;

      private var gylon:XML;

      override protected function compareSlots(param1:XML, param2:XML) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.itemXML=param1;
         this.curItemXML=param2;
         this.fufo=param1.Projectile[0];
         this.gylon=param2.Projectile[0];
         this.jaluzebyp();
         this.nuqyd();
         vase[this.fufo.toXMLString()]=true;
         return;
      }

      private function jaluzebyp() : Qebar {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc1_:int = int(this.fufo.MinDamage);
         var _loc2_:int = int(this.fufo.MaxDamage);
         var _loc3_:int = int(this.gylon.MinDamage);
         var _loc4_:int = int(this.gylon.MaxDamage);
         var _loc5_:Number = (_loc1_+_loc2_)/2;
         var _loc6_:Number = (_loc3_+_loc4_)/2;
         var _loc7_:uint = conehody(_loc5_-_loc6_);
         var _loc8_:String = _loc1_==_loc2_?_loc2_.toString():_loc1_+" - "+_loc2_;
         return lupizavyc.pushParams(Kefyfa.DAMAGE,{damage:"<font color=\"#"+_loc7_.toString(16)+"\">"+_loc8_+"</font>"});
      }

      private function nuqyd() : Qebar {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:Number = Number(this.fufo.Speed)*Number(this.fufo.LifetimeMS)/10000;
         var _loc2_:Number = Number(this.gylon.Speed)*Number(this.gylon.LifetimeMS)/10000;
         var _loc3_:uint = conehody(_loc1_-_loc2_);
         return lupizavyc.pushParams(Kefyfa.puc,{range:"<font color=\"#"+_loc3_.toString(16)+"\">"+_loc1_+"</font>"});
      }
   }
[/CLASS]
}