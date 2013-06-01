package kozaligov
{
[CLASS292]   import flash.utils.Dictionary;
   import qypupet.Gucuqop;


   public class Cyj extends Object
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Cyj() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const zohi:Dictionary = rylyvu();

      private static const veqosodem:Dictionary = fivakiry();

      private static function fivakiry() : Dictionary {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dictionary = new Dictionary();
         _loc1_[Gucuqop.hanetorum]=
            {
               gold:100,
               fame:300
            }
         ;
         _loc1_[Gucuqop.puvalamu]=
            {
               gold:240,
               fame:1000
            }
         ;
         _loc1_[Gucuqop.gohalime]=
            {
               gold:600,
               fame:4000
            }
         ;
         _loc1_[Gucuqop.fisowybe]=
            {
               gold:1800,
               fame:15000
            }
         ;
         return _loc1_;
      }

      private static function rylyvu() : Dictionary {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dictionary = new Dictionary();
         _loc1_[Gucuqop.hanetorum]=
            {
               gold:5,
               fame:10
            }
         ;
         _loc1_[Gucuqop.puvalamu]=
            {
               gold:12,
               fame:30
            }
         ;
         _loc1_[Gucuqop.gohalime]=
            {
               gold:30,
               fame:100
            }
         ;
         _loc1_[Gucuqop.fisowybe]=
            {
               gold:60,
               fame:350
            }
         ;
         _loc1_[Gucuqop.lavadak]=
            {
               gold:150,
               fame:1000
            }
         ;
         return _loc1_;
      }

      public static function jidad(param1:Gucuqop) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return veqosodem[param1]?veqosodem[param1].gold:0;
      }

      public static function wiqa(param1:Gucuqop) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return veqosodem[param1]?veqosodem[param1].fame:0;
      }

      public static function gijebipic(param1:Gucuqop) : int {
         return zohi[param1].gold;
      }

      public static function fukacil(param1:Gucuqop) : int {
         return zohi[param1].fame;
      }
   }
[/CLASS]
}