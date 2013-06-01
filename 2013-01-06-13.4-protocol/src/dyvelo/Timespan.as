package dyvelo
{
[CLASS889]   import __AS3__.vec.Vector;
   import haqakel.Kefyfa;


   public class Timespan extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Timespan(param1:String, param2:String) {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super();
         this.name=param1;
         this.id=param2;
         return;
      }

      public static const bawop:Timespan = new Timespan(Kefyfa.wajotaf,"week");

      public static const vaquso:Timespan = new Timespan(Kefyfa.zan,"month");

      public static const wopyguto:Timespan = new Timespan(Kefyfa.gutever,"all");

      public static const tis:Vector.<Timespan> = new Vector.<Timespan>(3);

      private var name:String;

      private var id:String;

      public function getName() : String {
         return this.name;
      }

      public function venad() : String {
         return this.id;
      }
   }
[/CLASS]
}