package rucag
{
   import jypuq.Fyzukeha;
   import jypuq.Pyzokipu;
   import __AS3__.vec.Vector;
   import kyco.Nun;
   import jypuq.Butod;


   public class Civiwo extends Object implements Fyzukeha, Pyzokipu
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Civiwo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private static const lerab:int = 256;

      private const hob:Vector.<MessageCenterMapping> = new Vector.<MessageCenterMapping>(lerab,true);

      private const rezuwana:Vector.<Vavoh> = new Vector.<Vavoh>(lerab,true);

      private var cemohoqal:Nun;

      public function setInjector(param1:Nun) : Civiwo {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cemohoqal=param1;
         return this;
      }

      public function map(param1:int) : Butod {
         return this.hob[param1]=(this.hob[param1])||(this.dehyvusoj(param1));
      }

      public function gukin(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.rezuwana[param1]=null;
         this.hob[param1]=null;
         return;
      }

      private function dehyvusoj(param1:int) : MessageCenterMapping {
         return new MessageCenterMapping().setInjector(this.cemohoqal).setID(param1) as MessageCenterMapping;
      }

      public function runozak(param1:int) : NetworkMessage {
         var _loc2_:Vavoh = this.rezuwana[param1]=(this.rezuwana[param1])||(this.luv(param1));
         return _loc2_.runozak();
      }

      private function luv(param1:uint) : Vavoh {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:MessageCenterMapping = this.hob[param1];
         return _loc2_?_loc2_.luv():null;
      }
   }

}