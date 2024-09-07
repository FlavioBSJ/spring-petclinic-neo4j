package org.springframework.samples.petclinic.configuration;

import org.neo4j.configuration.connectors.BoltConnector;
import org.neo4j.configuration.helpers.SocketAddress;
import org.neo4j.dbms.api.DatabaseManagementService;
import org.neo4j.dbms.api.DatabaseManagementServiceBuilder;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.io.fs.FileUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.io.File;
import java.nio.file.Path;

import static org.neo4j.configuration.GraphDatabaseSettings.DEFAULT_DATABASE_NAME;

@Configuration
public class EmbeddedNeo4jConfig {

	@Bean
	public GraphDatabaseService graphDatabaseService() throws Exception {
		Path databasePath = new File("neo4j-database").toPath();
		FileUtils.deleteDirectory(databasePath);

		DatabaseManagementService managementService = new DatabaseManagementServiceBuilder(databasePath)
			.setConfig(BoltConnector.enabled, true)
			.setConfig(BoltConnector.listen_address, new SocketAddress("localhost", 7687))
			.build();

		GraphDatabaseService graphDb = managementService.database(DEFAULT_DATABASE_NAME);

		Runtime.getRuntime().addShutdownHook(new Thread(managementService::shutdown));
		return graphDb;
	}

}
