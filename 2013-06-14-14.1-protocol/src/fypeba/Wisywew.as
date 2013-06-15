package fypeba
{
   import flash.utils.Dictionary;
   import fanij.Wymove;


   public class Wisywew extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Wisywew() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const fucisaq:Dictionary = ruzuvapuc();

      private static const satifos:Dictionary = cococi();

      private static function cococi() : Dictionary {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dictionary = new Dictionary();
         _loc1_[Wymove.rofu]=
            {
               gold:100,
               fame:300
            }
         ;
         _loc1_[Wymove.zohile]=
            {
               gold:240,
               fame:1000
            }
         ;
         _loc1_[Wymove.roguk]=
            {
               gold:600,
               fame:4000
            }
         ;
         _loc1_[Wymove.vikajy]=
            {
               gold:1800,
               fame:15000
            }
         ;
         return _loc1_;
      }

      private static function ruzuvapuc() : Dictionary {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dictionary = new Dictionary();
         _loc1_[Wymove.rofu]=
            {
               gold:5,
               fame:10
            }
         ;
         _loc1_[Wymove.zohile]=
            {
               gold:12,
               fame:30
            }
         ;
         _loc1_[Wymove.roguk]=
            {
               gold:30,
               fame:100
            }
         ;
         _loc1_[Wymove.vikajy]=
            {
               gold:60,
               fame:350
            }
         ;
         _loc1_[Wymove.hov]=
            {
               gold:150,
               fame:1000
            }
         ;
         return _loc1_;
      }

      public static function nece(param1:Wymove) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return satifos[param1]?satifos[param1].gold:0;
      }

      public static function rynyqe(param1:Wymove) : int {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return satifos[param1]?satifos[param1].fame:0;
      }

      public static function mywoc(param1:Wymove) : int {
         return fucisaq[param1].gold;
      }

      public static function ravymufy(param1:Wymove) : int {
         return fucisaq[param1].fame;
      }
   }

}