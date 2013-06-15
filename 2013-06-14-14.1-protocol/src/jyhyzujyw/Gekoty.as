package jyhyzujyw
{
   import tytojonib.Command;
   import fanij.Namejaja;
   import micac.Ciqyl;
   import cizagamym.Boquzojul;
   import racitagy.Qarynegut;
   import fanij.Woho;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Gekoty extends Command
   {
      public function Gekoty() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var type:int;

      public var buguzunag:Namejaja;

      public var fer:Ciqyl;

      public var ridecy:Boquzojul;

      override public function execute() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.buguzunag.kihabot(this.gyguvusec());
         this.ridecy.dispatch(new Qarynegut(this.fer.qyhowo));
         return;
      }

      private function gyguvusec() : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:String = Woho.naryq(this.type).value;
         return ObjectLibrary.jesycegoc(_loc1_).@type;
      }
   }

}