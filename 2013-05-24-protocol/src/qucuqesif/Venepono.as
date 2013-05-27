package qucuqesif
{
   import flash.utils.Dictionary;
   import zoroc.Cikyzigit;


   public class Venepono extends Object
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Venepono() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private static const quzug:Dictionary = dupih();

      private static const rarevetu:Dictionary = ryj();

      private static function ryj() : Dictionary {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Dictionary = new Dictionary();
         _loc1_[Cikyzigit.tupuv]=
            {
               gold:100,
               fame:300
            }
         ;
         _loc1_[Cikyzigit.mucum]=
            {
               gold:240,
               fame:1000
            }
         ;
         _loc1_[Cikyzigit.guzibag]=
            {
               gold:600,
               fame:4000
            }
         ;
         _loc1_[Cikyzigit.tirik]=
            {
               gold:1800,
               fame:15000
            }
         ;
         return _loc1_;
      }

      private static function dupih() : Dictionary {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Dictionary = new Dictionary();
         _loc1_[Cikyzigit.tupuv]=
            {
               gold:5,
               fame:10
            }
         ;
         _loc1_[Cikyzigit.mucum]=
            {
               gold:12,
               fame:30
            }
         ;
         _loc1_[Cikyzigit.guzibag]=
            {
               gold:30,
               fame:100
            }
         ;
         _loc1_[Cikyzigit.tirik]=
            {
               gold:60,
               fame:350
            }
         ;
         _loc1_[Cikyzigit.luwilal]=
            {
               gold:150,
               fame:1000
            }
         ;
         return _loc1_;
      }

      public static function banopu(param1:Cikyzigit) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return rarevetu[param1]?rarevetu[param1].gold:0;
      }

      public static function tyzogyd(param1:Cikyzigit) : int {
         var _loc2_:* = false;
         var _loc3_:* = true;
         return rarevetu[param1]?rarevetu[param1].fame:0;
      }

      public static function gybabos(param1:Cikyzigit) : int {
         return quzug[param1].gold;
      }

      public static function jatut(param1:Cikyzigit) : int {
         return quzug[param1].fame;
      }
   }

}