package lafol
{
[CLASS320]   import zun.Vij;
   import zun.Fyqyna;
   import __AS3__.vec.Vector;
   import pogefeqeh.Wahovy;
   import zun.Nizulazu;


   public class Jaqelegu extends Object implements Vij, Fyqyna
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Jaqelegu() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const dezyl:int = 256;

      private const tuga:Vector.<MessageCenterMapping> = new Vector.<MessageCenterMapping>(dezyl,true);

      private const sivocisid:Vector.<Pope> = new Vector.<Pope>(dezyl,true);

      private var viqelo:Wahovy;

      public function setInjector(param1:Wahovy) : Jaqelegu {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.viqelo=param1;
         return this;
      }

      public function map(param1:int) : Nizulazu {
         return this.tuga[param1]=(this.tuga[param1])||(this.hycib(param1));
      }

      public function gihacas(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.sivocisid[param1]=null;
         this.tuga[param1]=null;
         return;
      }

      private function hycib(param1:int) : MessageCenterMapping {
         return new MessageCenterMapping().setInjector(this.viqelo).setID(param1) as MessageCenterMapping;
      }

      public function suqyz(param1:int) : Zufadazi {
         var _loc2_:Pope = this.sivocisid[param1]=(this.sivocisid[param1])||(this.caq(param1));
         return _loc2_.suqyz();
      }

      private function caq(param1:uint) : Pope {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:MessageCenterMapping = this.tuga[param1];
         return _loc2_?_loc2_.caq():null;
      }
   }
[/CLASS]
}