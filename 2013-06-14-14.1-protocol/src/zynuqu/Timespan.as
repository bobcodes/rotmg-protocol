package zynuqu
{
   import __AS3__.vec.Vector;
   import komi.Vibemod;


   public class Timespan extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Timespan(param1:String, param2:String) {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         this.name=param1;
         this.id=param2;
         return;
      }

      public static const wimij:Timespan = new Timespan(Vibemod.gyzyfu,"week");

      public static const qepa:Timespan = new Timespan(Vibemod.goqafehy,"month");

      public static const bid:Timespan = new Timespan(Vibemod.gusadyry,"all");

      public static const joqed:Vector.<Timespan> = new Vector.<Timespan>(3);

      private var name:String;

      private var id:String;

      public function getName() : String {
         return this.name;
      }

      public function rivur() : String {
         return this.id;
      }
   }

}