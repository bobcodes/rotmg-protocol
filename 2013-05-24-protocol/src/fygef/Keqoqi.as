package fygef
{
   import __AS3__.vec.Vector;


   public class Keqoqi extends Object implements Voj
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Keqoqi() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         this.index=0;
         this.zytamoze();
         this.count=this.jyga.length;
         this.qedyjyti();
         return;
      }

      public static var lejyfy:Class = Kehoma;

      private var jyga:Vector.<String>;

      private var pejyby:Vector.<int>;

      private var index:int;

      private var count:int;

      public function jolugaj() : String {
         var _loc1_:int = this.pejyby[this.index++%this.count];
         return this.jyga[_loc1_];
      }

      private function zytamoze() : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:XML = null;
         var _loc1_:XML = XML(new lejyfy());
         this.jyga=new Vector.<String>(0);
         for each (_loc2_ in _loc1_.Protip)
         {
            this.jyga.push(_loc2_.toString());
         }
         this.count=this.jyga.length;
         return;
      }

      private function qedyjyti() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Vector.<int> = new Vector.<int>(0);
         var _loc2_:* = 0;
         while(_loc2_<this.count)
         {
            _loc1_.push(_loc2_);
            _loc2_++;
         }
         this.pejyby=new Vector.<int>(0);
         while(_loc2_>0)
         {
            this.pejyby.push(_loc1_.splice(Math.floor(Math.random()*_loc2_--),1)[0]);
         }
         this.pejyby.fixed=true;
         return;
      }
   }

}