package qypupet
{
[CLASS947]

   public class Dafuhu extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Dafuhu(param1:*, param2:int, param3:Gucuqop) {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         this.value=param1;
         this.dafeweqif=param2;
         this.rarity=param3;
         return;
      }

      public static const dotozi:Dafuhu = new Dafuhu("Yard Upgrader 1",1,Gucuqop.hanetorum);

      public static const cipyr:Dafuhu = new Dafuhu("Yard Upgrader 2",2,Gucuqop.puvalamu);

      public static const dagafo:Dafuhu = new Dafuhu("Yard Upgrader 3",3,Gucuqop.gohalime);

      public static const fugecebap:Dafuhu = new Dafuhu("Yard Upgrader 4",4,Gucuqop.fisowybe);

      public static const jitikug:Dafuhu = new Dafuhu("Yard Upgrader 5",5,Gucuqop.lavadak);

      public static const lenuhido:int = 5;

      public static function get list() : Array {
         return [dotozi,cipyr,dagafo,fugecebap,jitikug];
      }

      public static function gak(param1:String) : Dafuhu {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:Dafuhu = null;
         var _loc3_:Dafuhu = null;
         for each (_loc3_ in Dafuhu.list)
         {
            if(param1==_loc3_.value)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public static function cep(param1:int) : Dafuhu {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:Dafuhu = null;
         var _loc3_:Dafuhu = null;
         for each (_loc3_ in Dafuhu.list)
         {
            if(param1==_loc3_.dafeweqif)
            {
               _loc2_=_loc3_;
            }
         }
         return _loc2_;
      }

      public var value:String;

      public var dafeweqif:int;

      public var rarity:Gucuqop;
   }
[/CLASS]
}