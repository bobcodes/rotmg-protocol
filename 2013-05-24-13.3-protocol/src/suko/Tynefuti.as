package suko
{
   import __AS3__.vec.Vector;
   import hedewi.Moho;
   import com.company.assembleegameclient.objects.GameObject;
   import com.company.assembleegameclient.objects.Player;


   public class Tynefuti extends Rerapipy
   {
      public function Tynefuti(param1:GameObject, param2:Player) {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Moho = null;
         super(param1,param2,0);
         this.kiwavasim=new Vector.<Moho>(this.sugifudoj);
         var _loc3_:* = 0;
         while(_loc3_<this.sugifudoj)
         {
            _loc4_=new Moho(_loc3_+sud,this,kacubuhu);
            roteqaso(_loc4_,2,_loc3_);
            this.kiwavasim[_loc3_]=_loc4_;
            _loc3_++;
         }
         return;
      }

      private const sugifudoj:uint = 8;

      private var kiwavasim:Vector.<Moho>;

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