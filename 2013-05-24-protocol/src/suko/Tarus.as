package suko
{
   import __AS3__.vec.Vector;
   import hedewi.Byhedyr;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Tarus extends Rerapipy
   {
      public function Tarus(param1:GameObject, param2:Player, param3:int=0, param4:Boolean=false) {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:Byhedyr = null;
         super(param1,param2,param3);
         this.kiwavasim=new Vector.<Byhedyr>(this.sugifudoj);
         this.dewygev=param4;
         var _loc5_:* = 0;
         while(_loc5_<this.sugifudoj)
         {
            _loc6_=new Byhedyr(_loc5_+sud,this,kacubuhu);
            _loc6_.nebidy(_loc5_+1);
            roteqaso(_loc6_,2,_loc5_);
            this.kiwavasim[_loc5_]=_loc6_;
            _loc5_++;
         }
         return;
      }

      private const sugifudoj:uint = 8;

      private var kiwavasim:Vector.<Byhedyr>;

      private var dewygev:Boolean;

      override public function setItems(param1:Vector.<int>, param2:int=0) : void {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         if(param1)
         {
            _loc3_=false;
            _loc4_=param1.length;
            _loc5_=0;
            while(_loc5_<this.sugifudoj)
            {
               if(_loc5_+sud<_loc4_)
               {
                  if(this.kiwavasim[_loc5_].setItem(param1[_loc5_+sud]))
                  {
                     _loc3_=true;
                  }
               }
               else
               {
                  if(this.kiwavasim[_loc5_].setItem(-1))
                  {
                     _loc3_=true;
                  }
               }
               _loc5_++;
            }
            if(_loc3_)
            {
               qenabus();
            }
         }
         return;
      }
   }

}