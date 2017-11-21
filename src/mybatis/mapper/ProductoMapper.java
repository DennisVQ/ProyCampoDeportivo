package mybatis.mapper;

import java.util.List;

import model.ProdVendido;
import model.Producto;

public interface ProductoMapper {	
	
	public int registrar(Producto bean) throws Exception;
	
	public List<Producto> listado() throws Exception;

	public Producto obtener(int codigo)throws Exception;
	
	public int comprar(ProdVendido venta) throws Exception;
	
}

