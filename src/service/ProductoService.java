package service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.ProdVendido;
import model.Producto;
import mybatis.MyBatisUtil;
import mybatis.mapper.ProductoMapper;

public class ProductoService {

	
	public List<Producto> listado() {
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		List<Producto> lista =  null; 
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			lista = pm.listado();
		} catch (Exception e){
			
		} finally {
			session.close();
		}
		return lista;
	}
	
	public int registrar(Producto producto) {
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			ok = pm.registrar(producto);		
			session.commit();
		} catch (Exception e){		
		} finally {
			session.close();
		}
		return ok;
	}

	public Producto obtener(int codigo, String nombre) {
		// TODO Auto-generated method stub
		Producto p = new Producto();
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		try{
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			p = pm.obtener(codigo);
		}catch(Exception e){
			System.out.println("Error en el Service : " + e);
		}finally {
			session.close();
		}
		return p;
	}

	public int comprar(ProdVendido venta){
		int ok = 0;
		SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
		
		try {
			ProductoMapper pm = session.getMapper(ProductoMapper.class);
			ok = pm.comprar(venta);		
			session.commit();
			
		} catch (Exception e){	
			System.out.println("Error en el Service : " + e);
		} finally {
			session.close();
		}
		return ok;
	}	
}
