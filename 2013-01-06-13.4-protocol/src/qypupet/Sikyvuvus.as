package qypupet
{
[CLASS316]

   public class Sikyvuvus extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Sikyvuvus() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      public static const LEFT:String = "leftSide";

      public static const RIGHT:String = "rightSide";

      public var jaq:Vuravipyg;

      public var qorecotym:int = -1;

      public var gujudunyt:Vuravipyg;

      public var dede:int = -1;

      public var sic:int = -1;

      public var caller:Class;

      public var selected:String;

      public function clear() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.caller=null;
         this.jaq=null;
         this.qorecotym=-1;
         this.gujudunyt=null;
         this.dede=-1;
         this.sic=-1;
         return;
      }

      public function lojicoh() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.sic==-1)&&!(this.dede==-1)&&!(this.qorecotym==-1)&&!(this.jaq==null);
      }

      public function kizu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.gujudunyt==null)&&!(this.jaq==null);
      }
   }
[/CLASS]
}