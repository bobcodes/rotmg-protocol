package suko
{
   import __AS3__.vec.Vector;
   import hedewi.Huqelur;
   import com.company.util.Zyvogajyl;
   import com.company.util.Zyzucomec;
   import sygumagu.Vakuleb;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Cogojy extends Rerapipy
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Cogojy(param1:GameObject, param2:Vector.<int>, param3:Player, param4:int=0) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:Huqelur = null;
         super(param1,param3,param4);
         this.kiwavasim=new Vector.<Huqelur>(sugifudoj);
         var _loc5_:* = 0;
         while(_loc5_<sugifudoj)
         {
            _loc6_=new Huqelur(_loc5_,this,kacubuhu);
            roteqaso(_loc6_,1,_loc5_);
            _loc6_.setType(param2[_loc5_]);
            this.kiwavasim[_loc5_]=_loc6_;
            _loc5_++;
         }
         return;
      }

      public static const sugifudoj:uint = 4;

      private var kiwavasim:Vector.<Huqelur>;

      public function wajid() : Zyvogajyl {
         return new Zyzucomec(Vakuleb.toArray(this.kiwavasim));
      }

      override public function setItems(param1:Vector.<int>, param2:int=0) : void {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(param1)
         {
            _loc3_=param1.length;
            _loc4_=0;
            while(_loc4_<this.kiwavasim.length)
            {
               if(_loc4_+param2<_loc3_)
               {
                  this.kiwavasim[_loc4_].setItem(param1[_loc4_+param2]);
               }
               else
               {
                  this.kiwavasim[_loc4_].setItem(-1);
               }
               this.kiwavasim[_loc4_].updateDim(curPlayer);
               _loc4_++;
            }
         }
         return;
      }
   }

}